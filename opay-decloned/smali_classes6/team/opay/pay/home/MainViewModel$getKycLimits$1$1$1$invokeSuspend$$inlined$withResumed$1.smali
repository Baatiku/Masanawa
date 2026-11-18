.class public final Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1$invokeSuspend$$inlined$withResumed$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WithLifecycleState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0005\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "R",
        "invoke",
        "()Ljava/lang/Object;",
        "androidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $limits$inlined:Ljava/util/List;

.field final synthetic this$0:Lteam/opay/pay/home/MainViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/MainViewModel;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1$invokeSuspend$$inlined$withResumed$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1$invokeSuspend$$inlined$withResumed$1;->$limits$inlined:Ljava/util/List;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1$invokeSuspend$$inlined$withResumed$1;->this$0:Lteam/opay/pay/home/MainViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/MainViewModel$getKycLimits$1$1$1$invokeSuspend$$inlined$withResumed$1;->$limits$inlined:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lteam/opay/pay/home/MainViewModel;->b0(Lteam/opay/pay/home/MainViewModel;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object v0
.end method
