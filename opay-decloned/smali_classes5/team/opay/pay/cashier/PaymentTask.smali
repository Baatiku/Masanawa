.class public final Lteam/opay/pay/cashier/PaymentTask;
.super Ljava/lang/Object;
.source "PaymentTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/PaymentTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J1\u0010\u0011\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0017R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/cashier/PaymentTask;",
        "",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "(Landroidx/fragment/app/Fragment;)V",
        "Lteam/opay/swarmfoundation/payment/PayInput;",
        "paymentReq",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "paymentAmount",
        "",
        "isShowStatePage",
        "pollingOrder",
        "",
        "b",
        "(Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZZ)V",
        "Lteam/opay/pay/cashier/CashDeskInput;",
        "input",
        "a",
        "(Lteam/opay/pay/cashier/CashDeskInput;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "Landroidx/fragment/app/Fragment;",
        "c",
        "Companion",
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


# static fields
.field public static final c:Lteam/opay/pay/cashier/PaymentTask$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/PaymentTask$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/PaymentTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/PaymentTask;->c:Lteam/opay/pay/cashier/PaymentTask$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lteam/opay/pay/cashier/PaymentTask;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/cashier/PaymentTask;->b:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/cashier/PaymentTask;->a:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/cashier/PaymentTask;Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZZILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    const/4 p3, 0x1

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    const/4 p4, 0x1

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/cashier/PaymentTask;->b(Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZZ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/cashier/CashDeskInput;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/cashier/PaymentTask;->a:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    const-class v2, Lteam/opay/pay/cashier/PaymentActivity;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "team.opay.pay.paymentInput"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "putExtra(...)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/pay/cashier/PaymentTask;->b:Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    const/16 v1, 0x12d

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/cashier/PaymentTask;->a:Landroidx/fragment/app/FragmentActivity;

    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZZ)V
    .locals 7
    .param p1    # Lteam/opay/swarmfoundation/payment/PayInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paymentReq"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paymentAmount"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/cashier/PaymentTask;->a:Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/pay/cashier/PaymentTask;->a:Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lteam/opay/pay/cashier/CashDeskInput;

    .line 29
    .line 30
    invoke-static {p1, p2}, Lohb;->c(Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/pay/cashier/OrderInput;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget-object v5, Lteam/opay/pay/cashier/PaymentType;->BUSINESS:Lteam/opay/pay/cashier/PaymentType;

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/swarmfoundation/payment/PayInput;->getShowMaskInfo()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    move-object v1, v0

    .line 41
    move v3, p3

    .line 42
    move v4, p4

    .line 43
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/cashier/CashDeskInput;-><init>(Lteam/opay/pay/cashier/OrderInput;ZZLteam/opay/pay/cashier/PaymentType;Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lteam/opay/pay/cashier/PaymentTask;->a(Lteam/opay/pay/cashier/CashDeskInput;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method
