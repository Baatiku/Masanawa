.class final Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UpdateApiService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/update/network/UpdateApiService;->c(Landroid/content/Context;Ljava/util/Map;Landroidx/lifecycle/MutableLiveData;Ljr2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.update.network.UpdateApiService"
    f = "UpdateApiService.kt"
    l = {
        0x5b,
        0x60,
        0x6b
    }
    m = "executeRequest"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lteam/opay/pay/update/network/UpdateApiService;


# direct methods
.method public constructor <init>(Lteam/opay/pay/update/network/UpdateApiService;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/update/network/UpdateApiService;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->this$0:Lteam/opay/pay/update/network/UpdateApiService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Ljr2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lteam/opay/pay/update/network/UpdateApiService$executeRequest$1;->this$0:Lteam/opay/pay/update/network/UpdateApiService;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, v0, v0, p0}, Lteam/opay/pay/update/network/UpdateApiService;->a(Lteam/opay/pay/update/network/UpdateApiService;Landroid/content/Context;Ljava/util/Map;Landroidx/lifecycle/MutableLiveData;Ljr2;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
