.class final Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ShareViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1;->c(Ljava/util/List;Ljr2;)Ljava/lang/Object;
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
    c = "team.opay.pay.cashier.result.ShareViewModel$queryLocalMobiles$1$1$1"
    f = "ShareViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callBack:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mobileList:Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;

.field final synthetic $mobiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $owner:Lag8;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/cashier/result/ShareViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashier/result/ShareViewModel;Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Lag8;Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/result/ShareViewModel;",
            "Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;",
            "Lag8;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->this$0:Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->$mobileList:Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->$owner:Lag8;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->$mobiles:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->$callBack:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/cashier/result/ShareViewModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->invokeSuspend$lambda$1(Lteam/opay/pay/cashier/result/ShareViewModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lteam/opay/pay/cashier/result/ShareViewModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v2, v1

    .line 13
    :goto_0
    if-eqz v2, :cond_6

    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lteam/opay/pay/cashier/result/ShareViewModel;->x(Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ShareViewModel;->t()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;->f()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    const/16 v3, 0xa

    .line 46
    .line 47
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 69
    .line 70
    invoke-virtual {v3}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    if-nez v1, :cond_2

    .line 79
    .line 80
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 96
    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;->f()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    const/4 p1, 0x0

    .line 111
    :goto_2
    sub-int/2addr p0, p1

    .line 112
    if-lez p0, :cond_6

    .line 113
    .line 114
    sget p1, Lteam/opay/pay/R$string;->osdk_xx_new:I

    .line 115
    .line 116
    const/16 p3, 0x63

    .line 117
    .line 118
    if-le p0, p3, :cond_5

    .line 119
    .line 120
    const-string p0, "99+"

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    :goto_3
    const/4 p3, 0x1

    .line 128
    new-array p3, p3, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object p0, p3, v0

    .line 131
    .line 132
    invoke-static {p1, p3}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 140
    .line 141
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
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
    new-instance p1, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->this$0:Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->$mobileList:Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->$owner:Lag8;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->$mobiles:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->$callBack:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;-><init>(Lteam/opay/pay/cashier/result/ShareViewModel;Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Lag8;Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->this$0:Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/cashier/result/ShareViewModel;->s(Lteam/opay/pay/cashier/result/ShareViewModel;)Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->$mobileList:Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {p1, v0, v3, v1, v2}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->w(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->$owner:Lag8;

    .line 27
    .line 28
    iget-object v1, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->this$0:Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 29
    .line 30
    iget-object v2, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->$mobiles:Ljava/util/List;

    .line 31
    .line 32
    iget-object v3, p0, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1$1$1;->$callBack:Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    new-instance v4, Lteam/opay/pay/cashier/result/a;

    .line 35
    .line 36
    invoke-direct {v4, v1, v2, v3}, Lteam/opay/pay/cashier/result/a;-><init>(Lteam/opay/pay/cashier/result/ShareViewModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0, v4}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method
