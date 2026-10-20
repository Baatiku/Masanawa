.class final Lteam/opay/camera/CameraActivity$savePhoto$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CameraActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/camera/CameraActivity;->T(Landroid/net/Uri;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.camera.CameraActivity$savePhoto$1"
    f = "CameraActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $imageUri:Landroid/net/Uri;

.field label:I

.field private p$:Lzr2;

.field final synthetic this$0:Lteam/opay/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lteam/opay/camera/CameraActivity;Landroid/net/Uri;Ljr2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/camera/CameraActivity$savePhoto$1;->this$0:Lteam/opay/camera/CameraActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/camera/CameraActivity$savePhoto$1;->$imageUri:Landroid/net/Uri;

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
    const-string v0, "completion"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/camera/CameraActivity$savePhoto$1;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/camera/CameraActivity$savePhoto$1;->this$0:Lteam/opay/camera/CameraActivity;

    .line 9
    .line 10
    iget-object v2, p0, Lteam/opay/camera/CameraActivity$savePhoto$1;->$imageUri:Landroid/net/Uri;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/camera/CameraActivity$savePhoto$1;-><init>(Lteam/opay/camera/CameraActivity;Landroid/net/Uri;Ljr2;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Lzr2;

    .line 16
    .line 17
    iput-object p1, v0, Lteam/opay/camera/CameraActivity$savePhoto$1;->p$:Lzr2;

    .line 18
    .line 19
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljr2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/camera/CameraActivity$savePhoto$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lteam/opay/camera/CameraActivity$savePhoto$1;

    .line 8
    .line 9
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lteam/opay/camera/CameraActivity$savePhoto$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    iget v0, p0, Lteam/opay/camera/CameraActivity$savePhoto$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "_data"

    .line 12
    .line 13
    filled-new-array {p1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$savePhoto$1;->this$0:Lteam/opay/camera/CameraActivity;

    .line 18
    .line 19
    iget-object v1, p0, Lteam/opay/camera/CameraActivity$savePhoto$1;->$imageUri:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Lteam/opay/camera/CameraActivity;->E(Lteam/opay/camera/CameraActivity;Landroid/net/Uri;[Ljava/lang/String;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/graphics/Bitmap;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-static {p1, v0}, Lnd1;->f(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lteam/opay/camera/CameraActivity$savePhoto$1;->this$0:Lteam/opay/camera/CameraActivity;

    .line 47
    .line 48
    sget v1, Lteam/opay/camera/R$id;->cover_img:I

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lteam/opay/camera/CameraActivity;->u(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/ImageView;

    .line 55
    .line 56
    new-instance v1, Lteam/opay/camera/CameraActivity$savePhoto$1$a;

    .line 57
    .line 58
    invoke-direct {v1, p0, v0}, Lteam/opay/camera/CameraActivity$savePhoto$1$a;-><init>(Lteam/opay/camera/CameraActivity$savePhoto$1;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method
