.class final Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;
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
    c = "team.opay.business.js.BusinessWebDelegate$chooseFile$1$1$1"
    f = "BusinessWebDelegate.kt"
    l = {
        0x84,
        0x85
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

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

.field final synthetic $uri:Landroid/net/Uri;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/business/js/BusinessWebDelegate;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/net/Uri;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/js/BusinessWebDelegate;Lteam/opay/business/js/H5FileChooser;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lteam/opay/business/js/BusinessWebDelegate;",
            "Lteam/opay/business/js/H5FileChooser;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$uri:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$filePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$fileChoose:Lteam/opay/business/js/H5FileChooser;

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
    new-instance p1, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$filePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$fileChoose:Lteam/opay/business/js/H5FileChooser;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/net/Uri;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/js/BusinessWebDelegate;Lteam/opay/business/js/H5FileChooser;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->label:I

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
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->L$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->L$0:Ljava/lang/Object;

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
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->L$1:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    iget-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    move-object v8, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$uri:Landroid/net/Uri;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    const-string p1, "*/*"

    .line 68
    .line 69
    :cond_3
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$filePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 70
    .line 71
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 72
    .line 73
    invoke-static {v5}, Lteam/opay/business/js/BusinessWebDelegate;->access$getContext$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-nez v5, :cond_4

    .line 78
    .line 79
    const-string v5, "context"

    .line 80
    .line 81
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    move-object v5, v2

    .line 85
    :cond_4
    iget-object v6, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$uri:Landroid/net/Uri;

    .line 86
    .line 87
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->L$0:Ljava/lang/Object;

    .line 88
    .line 89
    iput-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->L$1:Ljava/lang/Object;

    .line 90
    .line 91
    iput v4, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->label:I

    .line 92
    .line 93
    invoke-static {v5, v6, p0}, Lteam/opay/business/js/utils/PathUtilKt;->h(Landroid/content/Context;Landroid/net/Uri;Ljr2;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-ne v4, v0, :cond_5

    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_5
    move-object v8, p1

    .line 101
    move-object p1, v4

    .line 102
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 103
    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    iget-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 107
    .line 108
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$fileChoose:Lteam/opay/business/js/H5FileChooser;

    .line 109
    .line 110
    iget-object v6, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->$uri:Landroid/net/Uri;

    .line 111
    .line 112
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->L$1:Ljava/lang/Object;

    .line 115
    .line 116
    iput v3, p0, Lteam/opay/business/js/BusinessWebDelegate$chooseFile$1$1$1;->label:I

    .line 117
    .line 118
    move-object v7, p1

    .line 119
    move-object v9, p0

    .line 120
    invoke-static/range {v4 .. v9}, Lteam/opay/business/js/BusinessWebDelegate;->access$handleFileChooseResult(Lteam/opay/business/js/BusinessWebDelegate;Lteam/opay/business/js/H5FileChooser;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-ne v2, v0, :cond_6

    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_6
    move-object v2, p1

    .line 128
    move-object v0, v1

    .line 129
    :goto_1
    move-object v1, v0

    .line 130
    :cond_7
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 131
    .line 132
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1
.end method
