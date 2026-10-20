.class final Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BusinessWebDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/js/BusinessWebDelegate;->chooseFile()V
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
    c = "team.opay.business.js.BusinessWebDelegate$chooseFile$1$1$2"
    f = "BusinessWebDelegate.kt"
    l = {
        0x96,
        0x97
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $fileChoose:Lteam/opay/business/js/H5FileChooser;

.field final synthetic $filePath:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mimeType:Ljava/lang/String;

.field final synthetic $uri:Landroid/net/Uri;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/business/js/BusinessWebDelegate;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/js/BusinessWebDelegate;Landroid/net/Uri;Lteam/opay/business/js/H5FileChooser;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lteam/opay/business/js/BusinessWebDelegate;",
            "Landroid/net/Uri;",
            "Lteam/opay/business/js/H5FileChooser;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$filePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$fileChoose:Lteam/opay/business/js/H5FileChooser;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$mimeType:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
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
    new-instance p1, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$filePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$uri:Landroid/net/Uri;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$fileChoose:Lteam/opay/business/js/H5FileChooser;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$mimeType:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/js/BusinessWebDelegate;Landroid/net/Uri;Lteam/opay/business/js/H5FileChooser;Ljava/lang/String;Ljr2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->L$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v2, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$filePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    sget-object v1, Lteam/opay/business/js/utils/FileChoose;->a:Lteam/opay/business/js/utils/FileChoose;

    .line 51
    .line 52
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 53
    .line 54
    invoke-static {v5}, Lteam/opay/business/js/BusinessWebDelegate;->access$getContext$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-nez v5, :cond_3

    .line 59
    .line 60
    const-string v5, "context"

    .line 61
    .line 62
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object v5, v2

    .line 66
    :cond_3
    iget-object v6, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$uri:Landroid/net/Uri;

    .line 67
    .line 68
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    iput v4, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->label:I

    .line 71
    .line 72
    invoke-virtual {v1, v5, v6, p0}, Lteam/opay/business/js/utils/FileChoose;->c(Landroid/content/Context;Landroid/net/Uri;Ljr2;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-ne v1, v0, :cond_4

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_4
    move-object v10, v1

    .line 80
    move-object v1, p1

    .line 81
    move-object p1, v10

    .line 82
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 83
    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    iget-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 87
    .line 88
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$fileChoose:Lteam/opay/business/js/H5FileChooser;

    .line 89
    .line 90
    iget-object v6, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$uri:Landroid/net/Uri;

    .line 91
    .line 92
    iget-object v8, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->$mimeType:Ljava/lang/String;

    .line 93
    .line 94
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->L$1:Ljava/lang/Object;

    .line 97
    .line 98
    iput v3, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$2;->label:I

    .line 99
    .line 100
    move-object v7, p1

    .line 101
    move-object v9, p0

    .line 102
    invoke-static/range {v4 .. v9}, Lteam/opay/business/js/BusinessWebDelegate;->access$handleFileChooseResult(Lteam/opay/business/js/BusinessWebDelegate;Lteam/opay/business/js/H5FileChooser;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-ne v2, v0, :cond_5

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_5
    move-object v2, p1

    .line 110
    move-object v0, v1

    .line 111
    :goto_1
    move-object v1, v0

    .line 112
    :cond_6
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 113
    .line 114
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p1
.end method
