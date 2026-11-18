.class final Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CoroutineLayoutInflater.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/common/android/event/CoroutineLayoutInflater;->b(ILandroid/view/ViewGroup;Ljr2;)Ljava/lang/Object;
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
        "Landroid/view/View;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lzr2;",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "<anonymous>",
        "(Lzr2;)Landroid/view/View;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.core.common.android.event.CoroutineLayoutInflater$inflate$2"
    f = "CoroutineLayoutInflater.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $parent:Landroid/view/ViewGroup;

.field final synthetic $resId:I

.field final synthetic $view:Landroid/view/View;

.field label:I

.field final synthetic this$0:Lteam/opay/core/common/android/event/CoroutineLayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/View;Lteam/opay/core/common/android/event/CoroutineLayoutInflater;ILandroid/view/ViewGroup;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lteam/opay/core/common/android/event/CoroutineLayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->$view:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->this$0:Lteam/opay/core/common/android/event/CoroutineLayoutInflater;

    .line 4
    .line 5
    iput p3, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->$resId:I

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->$parent:Landroid/view/ViewGroup;

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
    new-instance p1, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->$view:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->this$0:Lteam/opay/core/common/android/event/CoroutineLayoutInflater;

    .line 6
    .line 7
    iget v3, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->$resId:I

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->$parent:Landroid/view/ViewGroup;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;-><init>(Landroid/view/View;Lteam/opay/core/common/android/event/CoroutineLayoutInflater;ILandroid/view/ViewGroup;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->$view:Landroid/view/View;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->this$0:Lteam/opay/core/common/android/event/CoroutineLayoutInflater;

    .line 16
    .line 17
    invoke-static {p1}, Lteam/opay/core/common/android/event/CoroutineLayoutInflater;->a(Lteam/opay/core/common/android/event/CoroutineLayoutInflater;)Lteam/opay/core/common/android/event/BasicInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget v0, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->$resId:I

    .line 22
    .line 23
    iget-object v1, p0, Lteam/opay/core/common/android/event/CoroutineLayoutInflater$inflate$2;->$parent:Landroid/view/ViewGroup;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_0
    return-object p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method
