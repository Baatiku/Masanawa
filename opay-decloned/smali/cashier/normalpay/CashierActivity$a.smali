.class public final Lcashier/normalpay/CashierActivity$a;
.super Ljava/lang/Object;
.source "CashierActivity.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/CashierActivity;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcashier/util/CashierDelegateMessage;",
        "event",
        "",
        "c",
        "(Lcashier/util/CashierDelegateMessage;Ljr2;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic a:Lcashier/normalpay/CashierActivity;


# direct methods
.method public constructor <init>(Lcashier/normalpay/CashierActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/normalpay/CashierActivity$a;->a:Lcashier/normalpay/CashierActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lcashier/util/CashierDelegateMessage;Ljr2;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcashier/util/CashierDelegateMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/util/CashierDelegateMessage;",
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
    iget-object p2, p0, Lcashier/normalpay/CashierActivity$a;->a:Lcashier/normalpay/CashierActivity;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcashier/util/CashierDelegateMessage;->a()Lcashier/CashierDelegate;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2, v0}, Lcashier/model/CashierViewModel;->x0(Lcashier/CashierDelegate;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcashier/normalpay/CashierActivity$a;->a:Lcashier/normalpay/CashierActivity;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    new-instance v0, Lcashier/data/CashierInput;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcashier/util/CashierDelegateMessage;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Lcashier/data/CashierInput;-><init>(Lteam/opay/swarmfoundation/payment/PayInput;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lcashier/model/CashierViewModel;->w0(Lcashier/data/CashierInput;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcashier/normalpay/CashierActivity$a;->a:Lcashier/normalpay/CashierActivity;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iget-object v0, p0, Lcashier/normalpay/CashierActivity$a;->a:Lcashier/normalpay/CashierActivity;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Lcashier/net/IPaymentApi;->getSdkLogVersion()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p2, v0}, Lcashier/data/CashierInput;->e(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v0, "input = "

    .line 65
    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcashier/util/CashierDelegateMessage;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    sget-object p1, Lcashier/util/CashierBus;->a:Lcashier/util/CashierBus;

    .line 77
    .line 78
    const-string p2, "cashier_pay_data"

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lcashier/util/CashierBus;->a(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcashier/normalpay/CashierActivity$a;->a:Lcashier/normalpay/CashierActivity;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p2, p0, Lcashier/normalpay/CashierActivity$a;->a:Lcashier/normalpay/CashierActivity;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lcashier/model/CashierViewModel;->r0(Landroidx/fragment/app/FragmentActivity;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcashier/normalpay/CashierActivity$a;->a:Lcashier/normalpay/CashierActivity;

    .line 95
    .line 96
    invoke-static {p1}, Lcashier/normalpay/CashierActivity;->E(Lcashier/normalpay/CashierActivity;)V

    .line 97
    .line 98
    .line 99
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcashier/util/CashierDelegateMessage;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcashier/normalpay/CashierActivity$a;->c(Lcashier/util/CashierDelegateMessage;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
