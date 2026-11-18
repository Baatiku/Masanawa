.class final Lcom/opay/webview/WebFoundationFragment$compressPic$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebFoundationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/WebFoundationFragment;->compressPic(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcom/opay/webview/WebFoundationData;",
        "T",
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Ln33;
    c = "com.opay.webview.WebFoundationFragment$compressPic$1"
    f = "WebFoundationFragment.kt"
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

.field final synthetic this$0:Lcom/opay/webview/WebFoundationFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opay/webview/WebFoundationFragment<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opay/webview/WebFoundationFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/WebFoundationFragment<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lcom/opay/webview/WebFoundationFragment$compressPic$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->$resultPicPath:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->$callback:Lkotlin/jvm/functions/Function1;

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
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/opay/webview/WebFoundationFragment$compressPic$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->$resultPicPath:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/opay/webview/WebFoundationFragment$compressPic$1;-><init>(Lcom/opay/webview/WebFoundationFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lzr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/webview/WebFoundationFragment$compressPic$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "requireContext()"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/opay/webview/WebFoundationFragment;->access$getCacheTempJpgFile(Lcom/opay/webview/WebFoundationFragment;Landroid/content/Context;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->c()Ljpc;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->$resultPicPath:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljpc;->M0(Ljava/lang/String;)Ljpc;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->j0(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljpc;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljpc;->R0()Lwm6;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/graphics/Bitmap;

    .line 63
    .line 64
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 65
    .line 66
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 67
    .line 68
    new-instance v4, Ljava/io/FileOutputStream;

    .line 69
    .line 70
    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 74
    .line 75
    .line 76
    const/16 v4, 0x3c

    .line 77
    .line 78
    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 82
    .line 83
    invoke-static {v1}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    new-instance v5, Lcom/opay/webview/WebFoundationFragment$compressPic$1$1;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 94
    .line 95
    iget-object v4, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 96
    .line 97
    invoke-direct {v5, p1, v1, v4, v0}, Lcom/opay/webview/WebFoundationFragment$compressPic$1$1;-><init>(Ljava/io/File;Lcom/opay/webview/WebFoundationFragment;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 98
    .line 99
    .line 100
    const/4 v6, 0x2

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v4, 0x0

    .line 103
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 112
    .line 113
    invoke-static {p1}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    new-instance v4, Lcom/opay/webview/WebFoundationFragment$compressPic$1$2;

    .line 122
    .line 123
    iget-object p1, p0, Lcom/opay/webview/WebFoundationFragment$compressPic$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 124
    .line 125
    invoke-direct {v4, p1, v0}, Lcom/opay/webview/WebFoundationFragment$compressPic$1$2;-><init>(Lcom/opay/webview/WebFoundationFragment;Ljr2;)V

    .line 126
    .line 127
    .line 128
    const/4 v5, 0x2

    .line 129
    const/4 v6, 0x0

    .line 130
    const/4 v3, 0x0

    .line 131
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 132
    .line 133
    .line 134
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p1

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 140
    .line 141
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p1
.end method
