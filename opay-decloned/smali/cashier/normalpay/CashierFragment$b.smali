.class public final Lcashier/normalpay/CashierFragment$b;
.super Ljava/lang/Object;
.source "CashierFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/CashierFragment;->addObserver()V
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
        "Lcashier/util/CountDownEvent;",
        "timeEvent",
        "",
        "c",
        "(Lcashier/util/CountDownEvent;Ljr2;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic a:Lcashier/normalpay/CashierFragment;


# direct methods
.method public constructor <init>(Lcashier/normalpay/CashierFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/normalpay/CashierFragment$b;->a:Lcashier/normalpay/CashierFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lcashier/util/CountDownEvent;Ljr2;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcashier/util/CountDownEvent;
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
            "Lcashier/util/CountDownEvent;",
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
    invoke-virtual {p1}, Lcashier/util/CountDownEvent;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcashier/normalpay/CashierFragment$b;->a:Lcashier/normalpay/CashierFragment;

    .line 6
    .line 7
    invoke-static {v0}, Lcashier/normalpay/CashierFragment;->G(Lcashier/normalpay/CashierFragment;)Lcashier/model/CashierViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string v0, ""

    .line 31
    .line 32
    :cond_1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_6

    .line 37
    .line 38
    iget-object p2, p0, Lcashier/normalpay/CashierFragment$b;->a:Lcashier/normalpay/CashierFragment;

    .line 39
    .line 40
    invoke-static {p2}, Lcashier/normalpay/CashierFragment;->C(Lcashier/normalpay/CashierFragment;)Ly8b;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    iget-object p2, p2, Ly8b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object p2, v1

    .line 50
    :goto_1
    if-nez p2, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    invoke-virtual {p1}, Lcashier/util/CountDownEvent;->a()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    iget-object p2, p0, Lcashier/normalpay/CashierFragment$b;->a:Lcashier/normalpay/CashierFragment;

    .line 61
    .line 62
    invoke-static {p2}, Lcashier/normalpay/CashierFragment;->C(Lcashier/normalpay/CashierFragment;)Ly8b;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    iget-object v1, p2, Ly8b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    :cond_4
    if-nez v1, :cond_5

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_5
    invoke-virtual {p1}, Lcashier/util/CountDownEvent;->c()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcashier/util/CountDownEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcashier/normalpay/CashierFragment$b;->c(Lcashier/util/CountDownEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
