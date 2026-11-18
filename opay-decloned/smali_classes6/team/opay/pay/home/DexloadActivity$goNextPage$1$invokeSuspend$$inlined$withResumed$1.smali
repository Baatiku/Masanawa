.class public final Lteam/opay/pay/home/DexloadActivity$goNextPage$1$invokeSuspend$$inlined$withResumed$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WithLifecycleState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/DexloadActivity$goNextPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic this$0:Lteam/opay/pay/home/DexloadActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/DexloadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/DexloadActivity$goNextPage$1$invokeSuspend$$inlined$withResumed$1;->this$0:Lteam/opay/pay/home/DexloadActivity;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/home/LiveFaceDetectionConfig;->Companion:Lteam/opay/pay/home/LiveFaceDetectionConfig$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/home/LiveFaceDetectionConfig$Companion;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 10
    .line 11
    const-class v1, Lcom/opay/face/common/IFaceSoCheck;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/opay/face/common/IFaceSoCheck;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/pay/home/DexloadActivity$goNextPage$1$invokeSuspend$$inlined$withResumed$1;->this$0:Lteam/opay/pay/home/DexloadActivity;

    .line 22
    .line 23
    new-instance v2, Lteam/opay/pay/home/DexloadActivity$goNextPage$1$1$1;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Lteam/opay/pay/home/DexloadActivity$goNextPage$1$1$1;-><init>(Lteam/opay/pay/home/DexloadActivity;)V

    .line 26
    .line 27
    .line 28
    const-string v3, "startuppage"

    .line 29
    .line 30
    const-string v4, "https://opayweb.onelink.me/hGhO/g4fwd4si"

    .line 31
    .line 32
    invoke-interface {v0, v1, v3, v4, v2}, Lcom/opay/face/common/IFaceSoCheck;->checkFaceSo(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/NextCallback;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/home/DexloadActivity$goNextPage$1$invokeSuspend$$inlined$withResumed$1;->this$0:Lteam/opay/pay/home/DexloadActivity;

    .line 37
    .line 38
    invoke-static {v0}, Lteam/opay/pay/home/DexloadActivity;->E(Lteam/opay/pay/home/DexloadActivity;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object v0
.end method
