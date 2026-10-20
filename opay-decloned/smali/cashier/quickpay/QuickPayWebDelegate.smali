.class public final Lcashier/quickpay/QuickPayWebDelegate;
.super Lteam/opay/swarmfoundation/webview/IWebDelegate;
.source "QuickPayWebDelegate.kt"


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/webview/IWebDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcashier/quickpay/QuickPayWebDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\"\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcashier/quickpay/QuickPayWebDelegate;",
        "Lteam/opay/swarmfoundation/webview/IWebDelegate;",
        "()V",
        "webData",
        "Lcom/opay/webview/WebFoundationJsData;",
        "getDefaultChannel",
        "",
        "webFoundationJsData",
        "inputAmount",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onMethodCallback",
        "viewModel",
        "Lcashier/model/CashierViewModel;",
        "quickPayChannel",
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
.field public static final Companion:Lcashier/quickpay/QuickPayWebDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REQUEST_H5_QUICK_PAY_CODE:I = 0x3555


# instance fields
.field private webData:Lcom/opay/webview/WebFoundationJsData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcashier/quickpay/QuickPayWebDelegate$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcashier/quickpay/QuickPayWebDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcashier/quickpay/QuickPayWebDelegate;->Companion:Lcashier/quickpay/QuickPayWebDelegate$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/webview/IWebDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onMethodCallback(Lcashier/quickpay/QuickPayWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lcashier/model/CashierViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcashier/quickpay/QuickPayWebDelegate;->onMethodCallback(Lcom/opay/webview/WebFoundationJsData;Lcashier/model/CashierViewModel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getDefaultChannel(Lcom/opay/webview/WebFoundationJsData;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 12

    .line 1
    sget-object v0, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lcashier/model/CashierViewModel$Companion;->h(Landroidx/fragment/app/FragmentActivity;)Lcashier/model/CashierViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcashier/quickpay/QuickMethodManager;

    .line 8
    .line 9
    new-instance v2, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$methodManager$1;

    .line 10
    .line 11
    invoke-direct {v2, p0, p1, v0}, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$methodManager$1;-><init>(Lcashier/quickpay/QuickPayWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lcashier/model/CashierViewModel;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p3, v0, v2}, Lcashier/quickpay/QuickMethodManager;-><init>(Landroidx/fragment/app/FragmentActivity;Lcashier/model/CashierViewModel;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 18
    .line 19
    const-class v3, Lcashier/AbstractQuickPayDelegate;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcashier/AbstractQuickPayDelegate;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2, p3}, Lcashier/AbstractQuickPayDelegate;->onCreate(Landroidx/fragment/app/FragmentActivity;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0, v2}, Lcashier/model/CashierViewModel;->x0(Lcashier/CashierDelegate;)V

    .line 33
    .line 34
    .line 35
    const-string p3, "1"

    .line 36
    .line 37
    invoke-virtual {v0, p3}, Lcashier/model/CashierViewModel;->H0(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p3, Lcashier/quickpay/QuickPaymentApi;

    .line 41
    .line 42
    invoke-direct {p3}, Lcashier/quickpay/QuickPaymentApi;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p3}, Lcashier/model/CashierViewModel;->E0(Lcashier/net/IPaymentApi;)V

    .line 46
    .line 47
    .line 48
    new-instance p3, Lcashier/data/NewPaymentInfoRequest;

    .line 49
    .line 50
    sget-object v2, Lcashier/util/CurrencyAmount;->Companion:Lcashier/util/CurrencyAmount$Companion;

    .line 51
    .line 52
    invoke-virtual {v2, p2}, Lcashier/util/CurrencyAmount$Companion;->b(Ljava/lang/String;)Lcashier/util/CurrencyAmount;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/16 v10, 0x7d

    .line 57
    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v9, 0x0

    .line 65
    move-object v2, p3

    .line 66
    invoke-direct/range {v2 .. v11}, Lcashier/data/NewPaymentInfoRequest;-><init>(Ljava/lang/String;Lcashier/util/CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p3}, Lcashier/model/CashierViewModel;->y0(Lcashier/data/NewPaymentInfoRequest;)V

    .line 70
    .line 71
    .line 72
    new-instance v6, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$1;

    .line 73
    .line 74
    invoke-direct {v6, p0, p1, v0}, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$1;-><init>(Lcashier/quickpay/QuickPayWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lcashier/model/CashierViewModel;)V

    .line 75
    .line 76
    .line 77
    new-instance v7, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$2;

    .line 78
    .line 79
    invoke-direct {v7, p0, p1, v0}, Lcashier/quickpay/QuickPayWebDelegate$getDefaultChannel$2;-><init>(Lcashier/quickpay/QuickPayWebDelegate;Lcom/opay/webview/WebFoundationJsData;Lcashier/model/CashierViewModel;)V

    .line 80
    .line 81
    .line 82
    const/4 v8, 0x6

    .line 83
    const/4 v2, 0x1

    .line 84
    const/4 v4, 0x0

    .line 85
    const-string v5, "key_from_first"

    .line 86
    .line 87
    invoke-static/range {v1 .. v9}, Lcashier/quickpay/QuickMethodManager;->j(Lcashier/quickpay/QuickMethodManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private final onMethodCallback(Lcom/opay/webview/WebFoundationJsData;Lcashier/model/CashierViewModel;)V
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v2

    .line 19
    :goto_0
    const-string v3, "pay_channel"

    .line 20
    .line 21
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->b()Lcashier/util/CurrencyAmount;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Lcashier/util/CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v1, v2

    .line 48
    :goto_1
    const-string v3, "available_amount"

    .line 49
    .line 50
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move-object v1, v2

    .line 65
    :goto_2
    const-string v3, "channel_icon"

    .line 66
    .line 67
    const-string v4, "channel_name"

    .line 68
    .line 69
    if-nez v1, :cond_5

    .line 70
    .line 71
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->f()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move-object v1, v2

    .line 89
    :goto_3
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    if-eqz p2, :cond_4

    .line 97
    .line 98
    invoke-virtual {p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    if-eqz p2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->h()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :cond_4
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    invoke-virtual {v1}, Lcashier/data/Card;->c()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcashier/data/Card;->g()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    const-string v3, "card_id"

    .line 127
    .line 128
    invoke-virtual {v1}, Lcashier/data/Card;->h()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    if-eqz p2, :cond_6

    .line 140
    .line 141
    invoke-virtual {p2}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    :cond_6
    const-string p2, "BankCard"

    .line 146
    .line 147
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    const-string v2, "card_no"

    .line 152
    .line 153
    if-eqz p2, :cond_7

    .line 154
    .line 155
    invoke-virtual {v1}, Lcashier/data/Card;->d()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_7
    invoke-virtual {v1}, Lcashier/data/Card;->b()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    .line 169
    .line 170
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    const-string v0, "json.toString()"

    .line 175
    .line 176
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {p2}, Lcom/opay/webview/util/WebfoundationUtilsKt;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-virtual {p1, p2}, Lcom/opay/webview/WebFoundationJsData;->callH5Method(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lteam/opay/swarmfoundation/webview/IWebDelegate;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3555

    .line 5
    .line 6
    if-ne p1, v0, :cond_2

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcashier/quickpay/QuickPayWebDelegate;->webData:Lcom/opay/webview/WebFoundationJsData;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    const-string p2, "key_web_scheme_result_result_data"

    .line 18
    .line 19
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p2, 0x0

    .line 25
    :goto_0
    if-nez p2, :cond_1

    .line 26
    .line 27
    const-string p2, ""

    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1, p2}, Lcom/opay/webview/WebFoundationJsData;->callH5Method(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public final quickPayChannel(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 7
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "quickPayChannel"
        }
    .end annotation

    .line 1
    const-string v0, "webFoundationJsData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, ""

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move-object v1, v2

    .line 17
    :cond_0
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "pay_amount"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v2, v1

    .line 30
    :goto_0
    const-string v1, "show_list"

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v3, "selected_channel"

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "card_id"

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v4, Ld00;->a:Ld00;

    .line 50
    .line 51
    invoke-virtual {v4}, Ld00;->e()Landroid/app/Activity;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    instance-of v5, v4, Landroidx/fragment/app/FragmentActivity;

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v4, v6

    .line 64
    :goto_1
    if-eqz v4, :cond_7

    .line 65
    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    instance-of v1, v4, Lcom/opay/webview/WebFoundationActivity;

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    move-object v6, v4

    .line 73
    check-cast v6, Lcom/opay/webview/WebFoundationActivity;

    .line 74
    .line 75
    :cond_3
    if-eqz v6, :cond_5

    .line 76
    .line 77
    invoke-virtual {v6}, Lcom/opay/webview/WebFoundationActivity;->C()Lcom/opay/webview/WebFoundationFragment;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-nez v1, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    iput-object p1, p0, Lcashier/quickpay/QuickPayWebDelegate;->webData:Lcom/opay/webview/WebFoundationJsData;

    .line 85
    .line 86
    sget-object p1, Lcashier/quickpay/QuickChannelActivity;->g:Lcashier/quickpay/QuickChannelActivity$Companion;

    .line 87
    .line 88
    new-instance v4, Lcashier/quickpay/ChannelInput;

    .line 89
    .line 90
    const-string v5, "payChannel"

    .line 91
    .line 92
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v5, "cardId"

    .line 96
    .line 97
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {v4, v2, v3, v0}, Lcashier/quickpay/ChannelInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/16 v0, 0x3555

    .line 104
    .line 105
    invoke-virtual {p1, v4, v0, v1}, Lcashier/quickpay/QuickChannelActivity$Companion;->a(Lcashier/quickpay/ChannelInput;ILandroidx/fragment/app/Fragment;)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    :goto_2
    return-void

    .line 110
    :cond_6
    invoke-direct {p0, p1, v2, v4}, Lcashier/quickpay/QuickPayWebDelegate;->getDefaultChannel(Lcom/opay/webview/WebFoundationJsData;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 111
    .line 112
    .line 113
    :cond_7
    :goto_3
    return-void
.end method
