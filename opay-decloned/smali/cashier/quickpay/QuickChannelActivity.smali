.class public final Lcashier/quickpay/QuickChannelActivity;
.super Lcashier/quickpay/Hilt_QuickChannelActivity;
.source "QuickChannelActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcashier/quickpay/QuickChannelActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0001\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003R\u001b\u0010\u0010\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\r\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcashier/quickpay/QuickChannelActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "D",
        "F",
        "Lcashier/model/CashierViewModel;",
        "d",
        "Lid8;",
        "C",
        "()Lcashier/model/CashierViewModel;",
        "viewModel",
        "Lcashier/quickpay/ChannelInput;",
        "e",
        "Lcashier/quickpay/ChannelInput;",
        "channelInput",
        "Lcashier/quickpay/QuickMethodManager;",
        "f",
        "B",
        "()Lcashier/quickpay/QuickMethodManager;",
        "methodManager",
        "g",
        "Companion",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final g:Lcashier/quickpay/QuickChannelActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcashier/quickpay/ChannelInput;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcashier/quickpay/QuickChannelActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcashier/quickpay/QuickChannelActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcashier/quickpay/QuickChannelActivity;->g:Lcashier/quickpay/QuickChannelActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcashier/quickpay/Hilt_QuickChannelActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcashier/quickpay/QuickChannelActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcashier/quickpay/QuickChannelActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 10
    .line 11
    const-class v2, Lcashier/model/CashierViewModel;

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcashier/quickpay/QuickChannelActivity$special$$inlined$viewModels$default$2;

    .line 18
    .line 19
    invoke-direct {v3, p0}, Lcashier/quickpay/QuickChannelActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lcashier/quickpay/QuickChannelActivity$special$$inlined$viewModels$default$3;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-direct {v4, v5, p0}, Lcashier/quickpay/QuickChannelActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcashier/quickpay/QuickChannelActivity;->d:Lid8;

    .line 32
    .line 33
    new-instance v0, Lcashier/quickpay/QuickChannelActivity$methodManager$2;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcashier/quickpay/QuickChannelActivity$methodManager$2;-><init>(Lcashier/quickpay/QuickChannelActivity;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcashier/quickpay/QuickChannelActivity;->f:Lid8;

    .line 43
    .line 44
    return-void
.end method

.method public static final synthetic A(Lcashier/quickpay/QuickChannelActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final E(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "insets"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$l;->d()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->f(I)Lpg7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "insets.getInsets(WindowI\u2026at.Type.navigationBars())"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iget v0, v0, Lpg7;->d:I

    .line 26
    .line 27
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method public static synthetic u(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcashier/quickpay/QuickChannelActivity;->E(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lcashier/quickpay/QuickChannelActivity;)Lcashier/quickpay/ChannelInput;
    .locals 0

    .line 1
    iget-object p0, p0, Lcashier/quickpay/QuickChannelActivity;->e:Lcashier/quickpay/ChannelInput;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y(Lcashier/quickpay/QuickChannelActivity;)Lcashier/quickpay/QuickMethodManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->B()Lcashier/quickpay/QuickMethodManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z(Lcashier/quickpay/QuickChannelActivity;)Lcashier/model/CashierViewModel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final B()Lcashier/quickpay/QuickMethodManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/quickpay/QuickChannelActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcashier/quickpay/QuickMethodManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final C()Lcashier/model/CashierViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/quickpay/QuickChannelActivity;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcashier/model/CashierViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final D()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v12, Lcashier/data/NewPaymentInfoRequest;

    .line 8
    .line 9
    sget-object v2, Lcashier/util/CurrencyAmount;->Companion:Lcashier/util/CurrencyAmount$Companion;

    .line 10
    .line 11
    iget-object v3, v0, Lcashier/quickpay/QuickChannelActivity;->e:Lcashier/quickpay/ChannelInput;

    .line 12
    .line 13
    const/4 v13, 0x0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3}, Lcashier/quickpay/ChannelInput;->getInputAmount()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v3, v13

    .line 22
    :goto_0
    if-nez v3, :cond_1

    .line 23
    .line 24
    const-string v3, ""

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v2, v3}, Lcashier/util/CurrencyAmount$Companion;->b(Ljava/lang/String;)Lcashier/util/CurrencyAmount;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/16 v10, 0x7d

    .line 31
    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    move-object v2, v12

    .line 40
    invoke-direct/range {v2 .. v11}, Lcashier/data/NewPaymentInfoRequest;-><init>(Ljava/lang/String;Lcashier/util/CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v12}, Lcashier/model/CashierViewModel;->y0(Lcashier/data/NewPaymentInfoRequest;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcashier/quickpay/QuickChannelActivity;->B()Lcashier/quickpay/QuickMethodManager;

    .line 47
    .line 48
    .line 49
    move-result-object v14

    .line 50
    iget-object v1, v0, Lcashier/quickpay/QuickChannelActivity;->e:Lcashier/quickpay/ChannelInput;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lcashier/quickpay/ChannelInput;->getPayChannel()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object/from16 v16, v1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-object/from16 v16, v13

    .line 62
    .line 63
    :goto_1
    iget-object v1, v0, Lcashier/quickpay/QuickChannelActivity;->e:Lcashier/quickpay/ChannelInput;

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1}, Lcashier/quickpay/ChannelInput;->getCardId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    :cond_3
    move-object/from16 v17, v13

    .line 72
    .line 73
    new-instance v1, Lcashier/quickpay/QuickChannelActivity$loadInfo$1;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Lcashier/quickpay/QuickChannelActivity$loadInfo$1;-><init>(Lcashier/quickpay/QuickChannelActivity;)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcashier/quickpay/QuickChannelActivity$loadInfo$2;

    .line 79
    .line 80
    invoke-direct {v2, v0}, Lcashier/quickpay/QuickChannelActivity$loadInfo$2;-><init>(Lcashier/quickpay/QuickChannelActivity;)V

    .line 81
    .line 82
    .line 83
    const/4 v15, 0x1

    .line 84
    const-string v18, "key_from_first"

    .line 85
    .line 86
    move-object/from16 v19, v1

    .line 87
    .line 88
    move-object/from16 v20, v2

    .line 89
    .line 90
    invoke-virtual/range {v14 .. v20}, Lcashier/quickpay/QuickMethodManager;->i(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final F()V
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v1, v2

    .line 23
    :goto_0
    const-string v3, "pay_channel"

    .line 24
    .line 25
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->b()Lcashier/util/CurrencyAmount;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1}, Lcashier/util/CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v1, v2

    .line 56
    :goto_1
    const-string v3, "available_amount"

    .line 57
    .line 58
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move-object v1, v2

    .line 77
    :goto_2
    const-string v3, "channel_icon"

    .line 78
    .line 79
    const-string v4, "channel_name"

    .line 80
    .line 81
    if-nez v1, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->f()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    move-object v1, v2

    .line 105
    :goto_3
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_4

    .line 123
    .line 124
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->h()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    :cond_4
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_5
    invoke-virtual {v1}, Lcashier/data/Card;->c()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Lcashier/data/Card;->g()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    const-string v3, "card_id"

    .line 147
    .line 148
    invoke-virtual {v1}, Lcashier/data/Card;->h()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    if-eqz v3, :cond_6

    .line 164
    .line 165
    invoke-virtual {v3}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    :cond_6
    const-string v3, "BankCard"

    .line 170
    .line 171
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    const-string v3, "card_no"

    .line 176
    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    invoke-virtual {v1}, Lcashier/data/Card;->d()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_7
    invoke-virtual {v1}, Lcashier/data/Card;->b()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    :goto_4
    new-instance v1, Landroid/content/Intent;

    .line 195
    .line 196
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v2, "key_web_scheme_result_result_data"

    .line 200
    .line 201
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string v1, "Intent().putExtra(\n     \u2026json.toString()\n        )"

    .line 210
    .line 211
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const/4 v1, -0x1

    .line 215
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1, v1, v0, v1}, Landroidx/activity/a;->b(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget p1, Lteam/opay/pay/cashier/R$layout;->pay_activity_cashier:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 12
    .line 13
    .line 14
    const p1, 0x1020002

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lubc;

    .line 29
    .line 30
    invoke-direct {v0}, Lubc;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Landroidx/core/view/a;->G0(Landroid/view/View;Lhka;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 37
    .line 38
    const-class v0, Lcashier/AbstractQuickPayDelegate;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcashier/AbstractQuickPayDelegate;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Lcashier/AbstractQuickPayDelegate;->onCreate(Landroidx/fragment/app/FragmentActivity;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Lcashier/model/CashierViewModel;->x0(Lcashier/CashierDelegate;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "1"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcashier/model/CashierViewModel;->H0(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Lcashier/quickpay/QuickPaymentApi;

    .line 72
    .line 73
    invoke-direct {v0}, Lcashier/quickpay/QuickPaymentApi;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcashier/model/CashierViewModel;->E0(Lcashier/net/IPaymentApi;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    const-string v0, "key_data"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move-object p1, v1

    .line 93
    :goto_0
    instance-of v0, p1, Lcashier/quickpay/ChannelInput;

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    check-cast p1, Lcashier/quickpay/ChannelInput;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move-object p1, v1

    .line 101
    :goto_1
    iput-object p1, p0, Lcashier/quickpay/QuickChannelActivity;->e:Lcashier/quickpay/ChannelInput;

    .line 102
    .line 103
    sget p1, Lteam/opay/pay/cashier/R$id;->loading_progress:I

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v2, Lcashier/quickpay/QuickChannelActivity$onCreate$2;

    .line 118
    .line 119
    invoke-direct {v2, p1}, Lcashier/quickpay/QuickChannelActivity$onCreate$2;-><init>(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    new-instance p1, Lcashier/quickpay/QuickChannelActivity$a;

    .line 123
    .line 124
    invoke-direct {p1, v2}, Lcashier/quickpay/QuickChannelActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance v0, Lcashier/data/CashierInput;

    .line 135
    .line 136
    const/4 v2, 0x1

    .line 137
    invoke-direct {v0, v1, v2, v1}, Lcashier/data/CashierInput;-><init>(Lteam/opay/swarmfoundation/payment/PayInput;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcashier/quickpay/QuickChannelActivity;->e:Lcashier/quickpay/ChannelInput;

    .line 141
    .line 142
    if-eqz v2, :cond_3

    .line 143
    .line 144
    invoke-virtual {v2}, Lcashier/quickpay/ChannelInput;->getInputAmount()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :cond_3
    invoke-virtual {v0, v1}, Lcashier/data/CashierInput;->d(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Lcashier/model/CashierViewModel;->w0(Lcashier/data/CashierInput;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->C()Lcashier/model/CashierViewModel;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v0}, Lcashier/net/IPaymentApi;->getSdkLogVersion()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Lcashier/data/CashierInput;->e(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lcashier/quickpay/QuickChannelActivity;->D()V

    .line 178
    .line 179
    .line 180
    return-void
.end method
