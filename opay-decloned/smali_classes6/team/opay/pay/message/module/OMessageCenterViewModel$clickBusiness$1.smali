.class final Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OMessageCenterViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/message/module/OMessageCenterViewModel;->B(Landroid/content/Context;Ljava/lang/String;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.message.module.OMessageCenterViewModel$clickBusiness$1"
    f = "OMessageCenterViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $businessType:Ljava/lang/String;

.field final synthetic $filterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/message/bean/Message;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/lang/String;Ljava/util/List;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/message/module/OMessageCenterViewModel;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/pay/message/bean/Message;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->$businessType:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->$filterList:Ljava/util/List;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
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
    new-instance p1, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->$businessType:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->$filterList:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;-><init>(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/lang/String;Ljava/util/List;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    iget v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->this$0:Lteam/opay/pay/message/module/OMessageCenterViewModel;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->$businessType:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;->$filterList:Ljava/util/List;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lteam/opay/pay/message/bean/Message;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lteam/opay/pay/message/bean/Message;->e()Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-static {p1, v0, v1}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->q(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method
