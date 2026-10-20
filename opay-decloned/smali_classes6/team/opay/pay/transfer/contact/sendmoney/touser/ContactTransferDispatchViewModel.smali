.class public final Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ContactTransferDispatchViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\t\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR$\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "Lag8;",
        "owner",
        "Lkotlin/Function0;",
        "",
        "onDataCollected",
        "q",
        "(Lag8;Lkotlin/jvm/functions/Function0;)V",
        "Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
        "a",
        "Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
        "r",
        "()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
        "s",
        "(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)V",
        "dispatchData",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final q(Lag8;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onDataCollected"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v4, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v4, p1, p0, p2, v0}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;-><init>(Lag8;Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;Lkotlin/jvm/functions/Function0;Ljr2;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final r()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;->a:Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)V
    .locals 0
    .param p1    # Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;->a:Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 2
    .line 3
    return-void
.end method
