.class final Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ObtainCouponViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/coupon/ObtainCouponViewModel;->B(Ljava/util/ArrayList;I)V
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
    c = "team.opay.pay.coupon.ObtainCouponViewModel$loadTextLine$1"
    f = "ObtainCouponViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/coupon/ChooseCouponItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $width:I

.field label:I

.field final synthetic this$0:Lteam/opay/pay/coupon/ObtainCouponViewModel;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lteam/opay/pay/coupon/ObtainCouponViewModel;ILjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/coupon/ChooseCouponItem;",
            ">;",
            "Lteam/opay/pay/coupon/ObtainCouponViewModel;",
            "I",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->$p:Ljava/util/ArrayList;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->this$0:Lteam/opay/pay/coupon/ObtainCouponViewModel;

    .line 4
    .line 5
    iput p3, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->$width:I

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
    new-instance p1, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->$p:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->this$0:Lteam/opay/pay/coupon/ObtainCouponViewModel;

    .line 6
    .line 7
    iget v2, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->$width:I

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;-><init>(Ljava/util/ArrayList;Lteam/opay/pay/coupon/ObtainCouponViewModel;ILjr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->$p:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->this$0:Lteam/opay/pay/coupon/ObtainCouponViewModel;

    .line 14
    .line 15
    iget v1, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->$width:I

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lteam/opay/pay/coupon/ChooseCouponItem;

    .line 33
    .line 34
    invoke-virtual {v2}, Lteam/opay/pay/coupon/ChooseCouponItem;->a()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Lteam/opay/pay/coupon/ChooseCouponItem;->c()Lteam/opay/pay/coupon/Voucher;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4}, Lteam/opay/pay/coupon/Voucher;->getDescription()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :cond_1
    invoke-virtual {v2}, Lteam/opay/pay/coupon/ChooseCouponItem;->c()Lteam/opay/pay/coupon/Voucher;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    sget-object v4, Le4e;->a:Le4e;

    .line 66
    .line 67
    invoke-static {v0}, Lteam/opay/pay/coupon/ObtainCouponViewModel;->s(Lteam/opay/pay/coupon/ObtainCouponViewModel;)Landroid/text/TextPaint;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v3, v5, v1}, Le4e;->a(Ljava/lang/String;Landroid/text/TextPaint;I)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-virtual {v2, v3}, Lteam/opay/pay/coupon/ChooseCouponItem;->j(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/coupon/ObtainCouponViewModel$loadTextLine$1;->this$0:Lteam/opay/pay/coupon/ObtainCouponViewModel;

    .line 80
    .line 81
    invoke-virtual {p1}, Lteam/opay/pay/coupon/ObtainCouponViewModel;->u()Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 94
    .line 95
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method
