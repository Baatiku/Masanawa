.class public final Lteam/opay/pay/history/TobepayManager;
.super Ljava/lang/Object;
.source "TobepayManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/TobepayManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\'\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u000cJ\u000f\u0010\u0019\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u000cJ\u0019\u0010\u001a\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/pay/history/TobepayManager;",
        "",
        "Lag8;",
        "viewLifecycleOwner",
        "Lteam/opay/pay/cashier/PaySheetViewModel;",
        "viewModel",
        "Llme;",
        "listener",
        "<init>",
        "(Lag8;Lteam/opay/pay/cashier/PaySheetViewModel;Llme;)V",
        "",
        "d",
        "()V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "f",
        "(IILandroid/content/Intent;)V",
        "",
        "success",
        "j",
        "(Z)V",
        "i",
        "h",
        "g",
        "(Landroid/content/Intent;)V",
        "Lteam/opay/pay/cashier/PayStatus;",
        "status",
        "k",
        "(Lteam/opay/pay/cashier/PayStatus;)V",
        "a",
        "Lag8;",
        "b",
        "Lteam/opay/pay/cashier/PaySheetViewModel;",
        "c",
        "Llme;",
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
.field public final a:Lag8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/cashier/PaySheetViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Llme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lag8;Lteam/opay/pay/cashier/PaySheetViewModel;Llme;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/PaySheetViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Llme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewLifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewModel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "listener"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/history/TobepayManager;->a:Lag8;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/pay/history/TobepayManager;->c:Llme;

    .line 24
    .line 25
    invoke-virtual {p2}, Lteam/opay/pay/cashier/PaySheetViewModel;->u0()Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance p3, Ljme;

    .line 30
    .line 31
    invoke-direct {p3, p0}, Ljme;-><init>(Lteam/opay/pay/history/TobepayManager;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lteam/opay/pay/history/TobepayManager$b;

    .line 35
    .line 36
    invoke-direct {v0, p3}, Lteam/opay/pay/history/TobepayManager$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/cashier/OrderResult;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/TobepayManager;->e(Lteam/opay/pay/cashier/OrderResult;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/history/TobepayManager;Lteam/opay/pay/cashier/OrderResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/TobepayManager;->c(Lteam/opay/pay/history/TobepayManager;Lteam/opay/pay/cashier/OrderResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/pay/history/TobepayManager;Lteam/opay/pay/cashier/OrderResult;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lxk8;->a:Lxk8;

    .line 2
    .line 3
    new-instance v1, Lkme;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lkme;-><init>(Lteam/opay/pay/cashier/OrderResult;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v0, v2, v1, v3, v2}, Lxk8;->f(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderResult;->a()Lteam/opay/pay/cashier/OrderStatus;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lteam/opay/pay/history/TobepayManager$a;->a:[I

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    aget p1, v0, p1

    .line 28
    .line 29
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/history/TobepayManager;->h()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :pswitch_0
    invoke-virtual {p0}, Lteam/opay/pay/history/TobepayManager;->i()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :pswitch_1
    iget-object p0, p0, Lteam/opay/pay/history/TobepayManager;->c:Llme;

    .line 41
    .line 42
    invoke-interface {p0}, Llme;->j()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :pswitch_2
    iget-object p0, p0, Lteam/opay/pay/history/TobepayManager;->c:Llme;

    .line 47
    .line 48
    invoke-interface {p0}, Llme;->s()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_3
    iget-object p0, p0, Lteam/opay/pay/history/TobepayManager;->c:Llme;

    .line 53
    .line 54
    invoke-interface {p0}, Llme;->y()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_4
    iget-object p0, p0, Lteam/opay/pay/history/TobepayManager;->c:Llme;

    .line 59
    .line 60
    invoke-interface {p0}, Llme;->m()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_5
    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/TobepayManager;->j(Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_6
    invoke-virtual {p0, v3}, Lteam/opay/pay/history/TobepayManager;->j(Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_7
    invoke-virtual {p0}, Lteam/opay/pay/history/TobepayManager;->i()V

    .line 74
    .line 75
    .line 76
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final e(Lteam/opay/pay/cashier/OrderResult;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/OrderResult;->a()Lteam/opay/pay/cashier/OrderStatus;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "BasePaymentFragment orderStatus observe,it = "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->p0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-virtual {p0, p3}, Lteam/opay/pay/history/TobepayManager;->g(Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Landroid/content/Intent;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v1, "team.opay.pay.EXTRA_VERIFICATION_CANCELLED"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p1, v0

    .line 17
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 26
    .line 27
    new-instance v9, Lteam/opay/pay/cashier/FailedInfo;

    .line 28
    .line 29
    sget v0, Lteam/opay/pay/R$string;->add_money_failed_header:I

    .line 30
    .line 31
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget v0, Lteam/opay/pay/R$string;->add_money_failed_description:I

    .line 36
    .line 37
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/16 v7, 0x3c

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    move-object v0, v9

    .line 49
    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/cashier/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v9}, Lteam/opay/pay/cashier/PaySheetViewModel;->U0(Lteam/opay/pay/cashier/FailedInfo;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->u0()Landroidx/lifecycle/MutableLiveData;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v6, Lteam/opay/pay/cashier/OrderResult;

    .line 62
    .line 63
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->FAILED:Lteam/opay/pay/cashier/OrderStatus;

    .line 64
    .line 65
    const/4 v4, 0x6

    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    move-object v0, v6

    .line 69
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 77
    .line 78
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->v0()Lteam/opay/pay/cashier/OrderStatusPolling;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v1, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 83
    .line 84
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :cond_2
    if-nez v0, :cond_3

    .line 95
    .line 96
    const-string v0, ""

    .line 97
    .line 98
    :cond_3
    const/4 v1, 0x1

    .line 99
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/cashier/OrderStatusPolling;->b(Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    :goto_1
    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->v0()Lteam/opay/pay/cashier/OrderStatusPolling;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 8
    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    :cond_1
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x2

    .line 28
    invoke-static {v0, v1, v3, v4, v2}, Lteam/opay/pay/cashier/IOrderStatusPolling;->c(Lteam/opay/pay/cashier/IOrderStatusPolling;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final i()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PayStatus;->FAILED:Lteam/opay/pay/cashier/PayStatus;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/pay/history/TobepayManager;->k(Lteam/opay/pay/cashier/PayStatus;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 9
    .line 10
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->G0()Lteam/opay/core/api/e;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$User;->h()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    const-string v2, "sp"

    .line 27
    .line 28
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "st"

    .line 33
    .line 34
    const-string v3, "1"

    .line 35
    .line 36
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x2

    .line 41
    new-array v3, v3, [Lkotlin/Pair;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    aput-object v1, v3, v4

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    aput-object v2, v3, v1

    .line 48
    .line 49
    const-string v1, "COMMON_order_response"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v3}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 55
    .line 56
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->F0()Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lteam/opay/pay/history/TobepayManager;->c:Llme;

    .line 66
    .line 67
    invoke-interface {v0}, Llme;->b()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final j(Z)V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PayStatus;->SUCCESS:Lteam/opay/pay/cashier/PayStatus;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/pay/history/TobepayManager;->k(Lteam/opay/pay/cashier/PayStatus;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 9
    .line 10
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->G0()Lteam/opay/core/api/e;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$User;->h()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    const-string v2, "sp"

    .line 27
    .line 28
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const-string v2, "0"

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const-string v2, "2"

    .line 38
    .line 39
    :goto_1
    const-string v3, "st"

    .line 40
    .line 41
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x2

    .line 46
    new-array v3, v3, [Lkotlin/Pair;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    aput-object v1, v3, v4

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    aput-object v2, v3, v1

    .line 53
    .line 54
    const-string v1, "COMMON_order_response"

    .line 55
    .line 56
    invoke-virtual {v0, v1, v3}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lteam/opay/pay/history/TobepayManager;->c:Llme;

    .line 60
    .line 61
    invoke-interface {v0, p1}, Llme;->h(Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final k(Lteam/opay/pay/cashier/PayStatus;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->Z0(Lteam/opay/pay/cashier/PayStatus;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/cashier/PayStatus;->ORDER:Lteam/opay/pay/cashier/PayStatus;

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lteam/opay/pay/history/TobepayManager;->b:Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->F0()Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
