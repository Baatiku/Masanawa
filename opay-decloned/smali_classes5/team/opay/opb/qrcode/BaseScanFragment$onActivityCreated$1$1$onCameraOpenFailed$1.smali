.class final Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BaseScanFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1;->a(Ljava/lang/Throwable;)V
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
    c = "team.opay.opb.qrcode.BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1"
    f = "BaseScanFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $e:Ljava/lang/Throwable;

.field label:I

.field final synthetic this$0:Lteam/opay/opb/qrcode/BaseScanFragment;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/BaseScanFragment;Ljava/lang/Throwable;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/qrcode/BaseScanFragment;",
            "Ljava/lang/Throwable;",
            "Ljr2<",
            "-",
            "Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;->this$0:Lteam/opay/opb/qrcode/BaseScanFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;->$e:Ljava/lang/Throwable;

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
    new-instance p1, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;->this$0:Lteam/opay/opb/qrcode/BaseScanFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;->$e:Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;Ljava/lang/Throwable;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;->this$0:Lteam/opay/opb/qrcode/BaseScanFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/BaseScanFragment;->U()Lpla;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lpla;->b()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;->this$0:Lteam/opay/opb/qrcode/BaseScanFragment;

    .line 23
    .line 24
    invoke-static {p1}, Lteam/opay/opb/qrcode/BaseScanFragment;->Q(Lteam/opay/opb/qrcode/BaseScanFragment;)Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;->$e:Ljava/lang/Throwable;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-virtual {p1, v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->r(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;->this$0:Lteam/opay/opb/qrcode/BaseScanFragment;

    .line 44
    .line 45
    invoke-static {p1}, Lteam/opay/opb/qrcode/BaseScanFragment;->R(Lteam/opay/opb/qrcode/BaseScanFragment;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method
