.class final Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BusinessWebDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/js/BusinessWebDelegate;->handleFileResult(Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;
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
    c = "team.opay.business.js.BusinessWebDelegate$handleFileResult$2"
    f = "BusinessWebDelegate.kt"
    l = {
        0xea
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $fileChooser:Lteam/opay/business/js/H5FileChooser;

.field final synthetic $mimeType:Ljava/lang/String;

.field final synthetic $path:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/business/js/BusinessWebDelegate;


# direct methods
.method public constructor <init>(Lteam/opay/business/js/H5FileChooser;Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/js/BusinessWebDelegate;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/js/H5FileChooser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/business/js/BusinessWebDelegate;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$fileChooser:Lteam/opay/business/js/H5FileChooser;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$path:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$mimeType:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

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

.method public static synthetic c(Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->invokeSuspend$lambda$0(Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 11

    .line 1
    sget-object v0, Lil8;->c:Lil8;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "---upload file result: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    move-object v5, p0

    .line 33
    move-object v6, p1

    .line 34
    move-object v7, p4

    .line 35
    move-object v8, p2

    .line 36
    move-object v9, p3

    .line 37
    invoke-direct/range {v5 .. v10}, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;-><init>(Lteam/opay/business/js/BusinessWebDelegate;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    .line 38
    .line 39
    .line 40
    const/4 v8, 0x3

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    move-object v7, p0

    .line 45
    invoke-static/range {v4 .. v9}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
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
    new-instance p1, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$fileChooser:Lteam/opay/business/js/H5FileChooser;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$path:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$mimeType:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;-><init>(Lteam/opay/business/js/H5FileChooser;Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/js/BusinessWebDelegate;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->label:I

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
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$fileChooser:Lteam/opay/business/js/H5FileChooser;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/business/js/H5FileChooser;->g()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-ne p1, v2, :cond_5

    .line 42
    .line 43
    sget-object p1, Lil8;->c:Lil8;

    .line 44
    .line 45
    const-string v0, "---upload file to server"

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-static {p1, v0, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lteam/opay/business/js/api/PrivacyFileRequest;

    .line 53
    .line 54
    iget-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$path:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$mimeType:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$fileChooser:Lteam/opay/business/js/H5FileChooser;

    .line 59
    .line 60
    invoke-virtual {v0}, Lteam/opay/business/js/H5FileChooser;->a()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$fileChooser:Lteam/opay/business/js/H5FileChooser;

    .line 65
    .line 66
    invoke-virtual {v0}, Lteam/opay/business/js/H5FileChooser;->b()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$fileChooser:Lteam/opay/business/js/H5FileChooser;

    .line 71
    .line 72
    invoke-virtual {v0}, Lteam/opay/business/js/H5FileChooser;->c()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    move-object v3, p1

    .line 77
    invoke-direct/range {v3 .. v8}, Lteam/opay/business/js/api/PrivacyFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 81
    .line 82
    invoke-static {v0}, Lteam/opay/business/js/BusinessWebDelegate;->access$getContext$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    const-string v0, "context"

    .line 89
    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move-object v2, v0

    .line 95
    :goto_0
    invoke-static {v2}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-nez v0, :cond_4

    .line 100
    .line 101
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_4
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 105
    .line 106
    invoke-static {v1}, Lteam/opay/business/js/BusinessWebDelegate;->access$getRepository(Lteam/opay/business/js/BusinessWebDelegate;)Lteam/opay/business/js/hilt/UploadFileRepository;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, p1}, Lteam/opay/business/js/hilt/UploadFileRepository;->d(Lteam/opay/business/js/api/PrivacyFileRequest;)Landroidx/lifecycle/LiveData;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 115
    .line 116
    iget-object v2, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$mimeType:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v3, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$path:Ljava/lang/String;

    .line 119
    .line 120
    new-instance v4, Lteam/opay/business/js/a;

    .line 121
    .line 122
    invoke-direct {v4, v0, v1, v2, v3}, Lteam/opay/business/js/a;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v4}, Lpna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    :goto_1
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 130
    .line 131
    iget-object v6, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$mimeType:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v7, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->$path:Ljava/lang/String;

    .line 134
    .line 135
    iput v2, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->label:I

    .line 136
    .line 137
    const/4 v8, 0x0

    .line 138
    const/4 v9, 0x0

    .line 139
    const/16 v11, 0xc

    .line 140
    .line 141
    const/4 v12, 0x0

    .line 142
    move-object v10, p0

    .line 143
    invoke-static/range {v5 .. v12}, Lteam/opay/business/js/BusinessWebDelegate;->callbackH5$default(Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Ljr2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-ne p1, v0, :cond_6

    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 151
    .line 152
    return-object p1
.end method
