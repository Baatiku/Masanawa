.class final Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebFoundationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/WebFoundationFragment;->initOpenPageLoadingView()V
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
    c = "com.opay.webview.WebFoundationFragment$initOpenPageLoadingView$2$1"
    f = "WebFoundationFragment.kt"
    l = {
        0x154
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $loadingView:Landroid/view/View;

.field I$0:I

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
.method public constructor <init>(Landroid/view/View;Lcom/opay/webview/WebFoundationFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/opay/webview/WebFoundationFragment<",
            "TT;>;",
            "Ljr2<",
            "-",
            "Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->$loadingView:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

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
    new-instance p1, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->$loadingView:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;-><init>(Landroid/view/View;Lcom/opay/webview/WebFoundationFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    iget v4, p0, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->label:I

    .line 9
    .line 10
    if-eqz v4, :cond_1

    .line 11
    .line 12
    if-ne v4, v2, :cond_0

    .line 13
    .line 14
    iget v4, p0, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->I$0:I

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_0
    if-ge v4, v0, :cond_4

    .line 33
    .line 34
    iget-object p1, p0, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->$loadingView:Landroid/view/View;

    .line 35
    .line 36
    sget v5, Lcom/opay/webview/R$id;->tv_time:I

    .line 37
    .line 38
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 45
    .line 46
    sget v6, Lcom/opay/webview/R$string;->web_letter_s:I

    .line 47
    .line 48
    rsub-int/lit8 v7, v4, 0x3

    .line 49
    .line 50
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    new-array v8, v2, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v7, v8, v1

    .line 57
    .line 58
    invoke-virtual {v5, v6, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iput v4, p0, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->I$0:I

    .line 66
    .line 67
    iput v2, p0, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->label:I

    .line 68
    .line 69
    const-wide/16 v5, 0x3e8

    .line 70
    .line 71
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v3, :cond_2

    .line 76
    .line 77
    return-object v3

    .line 78
    :cond_2
    :goto_1
    const/4 p1, 0x2

    .line 79
    if-ne v4, p1, :cond_3

    .line 80
    .line 81
    iget-object p1, p0, Lcom/opay/webview/WebFoundationFragment$initOpenPageLoadingView$2$1;->$loadingView:Landroid/view/View;

    .line 82
    .line 83
    const/16 v5, 0x8

    .line 84
    .line 85
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :cond_3
    add-int/2addr v4, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p1
.end method
