.class final Lcashier/model/PayVoucherViewModel$getValidVouchers$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PayVoucherViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/model/PayVoucherViewModel;->z(Lcashier/data/PayVouchersRequest;Lag8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcashier/net/ResultData<",
        "+",
        "Lcashier/data/VoucherGrabList;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001e\u0010\u0002\u001a\u001a\u0012\u0006\u0008\u0001\u0012\u00020\u0004 \u0005*\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcashier/net/ResultData;",
        "Lcashier/data/VoucherGrabList;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcashier/model/PayVoucherViewModel;


# direct methods
.method public constructor <init>(Lcashier/model/PayVoucherViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/model/PayVoucherViewModel$getValidVouchers$1;->this$0:Lcashier/model/PayVoucherViewModel;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcashier/net/ResultData;

    invoke-virtual {p0, p1}, Lcashier/model/PayVoucherViewModel$getValidVouchers$1;->invoke(Lcashier/net/ResultData;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/net/ResultData;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/net/ResultData<",
            "+",
            "Lcashier/data/VoucherGrabList;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    iget-object v3, v0, Lcashier/model/PayVoucherViewModel$getValidVouchers$1;->this$0:Lcashier/model/PayVoucherViewModel;

    invoke-virtual {v3}, Lcashier/model/PayVoucherViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcashier/data/VoucherGrabList;

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {v4}, Lcashier/data/VoucherGrabList;->a()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance v5, Lcashier/adapter/ChooseCouponItem;

    .line 8
    sget-object v6, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    move-result-object v6

    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    move-result-object v6

    .line 9
    sget v7, Lteam/opay/pay/cashier/R$string;->pay_available_voucher_new:I

    .line 10
    invoke-virtual {v4}, Lcashier/data/VoucherGrabList;->a()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v8, v9, v1

    .line 11
    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x1fe

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v6, v5

    .line 12
    invoke-direct/range {v6 .. v17}, Lcashier/adapter/ChooseCouponItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcashier/data/Voucher;ZIILjava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v4}, Lcashier/data/VoucherGrabList;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcashier/data/Voucher;

    .line 16
    new-instance v6, Lcashier/adapter/ChooseCouponItem;

    const/16 v17, 0x1e7

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v18}, Lcashier/adapter/ChooseCouponItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcashier/data/Voucher;ZIILjava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcashier/data/VoucherGrabList;->d()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    .line 18
    :cond_2
    new-instance v5, Lcashier/adapter/ChooseCouponItem;

    .line 19
    sget-object v6, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    move-result-object v6

    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    move-result-object v6

    .line 20
    sget v7, Lteam/opay/pay/cashier/R$string;->pay_unavailable_voucher_new:I

    .line 21
    invoke-virtual {v4}, Lcashier/data/VoucherGrabList;->d()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v1

    .line 22
    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual {v4}, Lcashier/data/VoucherGrabList;->c()Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-virtual {v4}, Lcashier/data/VoucherGrabList;->b()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x1f8

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v6, v5

    .line 25
    invoke-direct/range {v6 .. v17}, Lcashier/adapter/ChooseCouponItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcashier/data/Voucher;ZIILjava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v4}, Lcashier/data/VoucherGrabList;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcashier/data/Voucher;

    .line 29
    new-instance v2, Lcashier/adapter/ChooseCouponItem;

    const/16 v14, 0x1e7

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v15}, Lcashier/adapter/ChooseCouponItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcashier/data/Voucher;ZIILjava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 30
    :cond_3
    :goto_3
    iget-object v1, v0, Lcashier/model/PayVoucherViewModel$getValidVouchers$1;->this$0:Lcashier/model/PayVoucherViewModel;

    .line 31
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcashier/adapter/ChooseCouponItem;

    .line 32
    invoke-static {v1, v4}, Lcashier/model/PayVoucherViewModel;->r(Lcashier/model/PayVoucherViewModel;Lcashier/adapter/ChooseCouponItem;)V

    goto :goto_4

    .line 33
    :cond_4
    iget-object v1, v0, Lcashier/model/PayVoucherViewModel$getValidVouchers$1;->this$0:Lcashier/model/PayVoucherViewModel;

    invoke-virtual {v1}, Lcashier/model/PayVoucherViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_5

    .line 34
    :cond_5
    iget-object v1, v0, Lcashier/model/PayVoucherViewModel$getValidVouchers$1;->this$0:Lcashier/model/PayVoucherViewModel;

    invoke-virtual {v1}, Lcashier/model/PayVoucherViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcashier/net/ResultData;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method
