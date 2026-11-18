.class public final Lcashier/quickpay/QuickPayActivity;
.super Lcashier/quickpay/Hilt_QuickPayActivity;
.source "QuickPayActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcashier/quickpay/QuickPayActivity$Companion;,
        Lcashier/quickpay/QuickPayActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0001\u0018\u0000 +2\u00020\u0001:\u0001,B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0010\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0010\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J)\u0010\u000e\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0015\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001d\u001a\u0004\u0008#\u0010$R\u001d\u0010*\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u001d\u001a\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcashier/quickpay/QuickPayActivity;",
        "Lcashier/ui/BasePayActivity;",
        "<init>",
        "()V",
        "",
        "D",
        "Lcashier/quickpay/QuickPaymentApi;",
        "M",
        "()Lcashier/quickpay/QuickPaymentApi;",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "intent",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "",
        "showMethod",
        "P",
        "(Z)V",
        "first",
        "O",
        "R",
        "Lcashier/PayResult;",
        "payResult",
        "Q",
        "(Lcashier/PayResult;)V",
        "Lcashier/model/PaymentManager;",
        "g",
        "Lid8;",
        "N",
        "()Lcashier/model/PaymentManager;",
        "paymentManager",
        "Lcashier/quickpay/QuickMethodManager;",
        "h",
        "L",
        "()Lcashier/quickpay/QuickMethodManager;",
        "methodManager",
        "Lcashier/util/CurrencyAmount;",
        "i",
        "K",
        "()Lcashier/util/CurrencyAmount;",
        "inputAmount",
        "j",
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
.field public static final j:Lcashier/quickpay/QuickPayActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcashier/quickpay/QuickPayActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcashier/quickpay/QuickPayActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcashier/quickpay/QuickPayActivity;->j:Lcashier/quickpay/QuickPayActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcashier/quickpay/Hilt_QuickPayActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcashier/quickpay/QuickPayActivity$paymentManager$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcashier/quickpay/QuickPayActivity$paymentManager$2;-><init>(Lcashier/quickpay/QuickPayActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcashier/quickpay/QuickPayActivity;->g:Lid8;

    .line 14
    .line 15
    new-instance v0, Lcashier/quickpay/QuickPayActivity$methodManager$2;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcashier/quickpay/QuickPayActivity$methodManager$2;-><init>(Lcashier/quickpay/QuickPayActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcashier/quickpay/QuickPayActivity;->h:Lid8;

    .line 25
    .line 26
    new-instance v0, Lcashier/quickpay/QuickPayActivity$inputAmount$2;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcashier/quickpay/QuickPayActivity$inputAmount$2;-><init>(Lcashier/quickpay/QuickPayActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcashier/quickpay/QuickPayActivity;->i:Lid8;

    .line 36
    .line 37
    return-void
.end method

.method public static final synthetic E(Lcashier/quickpay/QuickPayActivity;)Lcashier/quickpay/QuickMethodManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcashier/quickpay/QuickPayActivity;->L()Lcashier/quickpay/QuickMethodManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F(Lcashier/quickpay/QuickPayActivity;)Lcashier/model/PaymentManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/quickpay/QuickPayActivity;->N()Lcashier/model/PaymentManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic G(Lcashier/quickpay/QuickPayActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/quickpay/QuickPayActivity;->O(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcashier/quickpay/QuickPayActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/quickpay/QuickPayActivity;->P(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcashier/quickpay/QuickPayActivity;Lcashier/PayResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/quickpay/QuickPayActivity;->Q(Lcashier/PayResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J(Lcashier/quickpay/QuickPayActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/quickpay/QuickPayActivity;->R()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final L()Lcashier/quickpay/QuickMethodManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/quickpay/QuickPayActivity;->h:Lid8;

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


# virtual methods
.method public D()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "0"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcashier/model/CashierViewModel;->H0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 13
    .line 14
    const-class v2, Lcashier/AbstractQuickPayDelegate;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcashier/AbstractQuickPayDelegate;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcashier/AbstractQuickPayDelegate;->onCreate(Landroidx/fragment/app/FragmentActivity;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v1}, Lcashier/model/CashierViewModel;->x0(Lcashier/CashierDelegate;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lcashier/data/CashierInput;

    .line 39
    .line 40
    new-instance v14, Lteam/opay/swarmfoundation/payment/PayInput;

    .line 41
    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v15, 0x0

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    const-string v4, "service_type"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v3, v15

    .line 63
    :goto_0
    const-string v4, ""

    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    move-object v5, v4

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-object v5, v3

    .line 70
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    const-string v6, "order_no"

    .line 83
    .line 84
    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move-object v3, v15

    .line 90
    :goto_2
    if-nez v3, :cond_4

    .line 91
    .line 92
    move-object v6, v4

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    move-object v6, v3

    .line 95
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    const-string v7, "service_id"

    .line 108
    .line 109
    invoke-virtual {v3, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    goto :goto_4

    .line 114
    :cond_5
    move-object v3, v15

    .line 115
    :goto_4
    if-nez v3, :cond_6

    .line 116
    .line 117
    move-object v7, v4

    .line 118
    goto :goto_5

    .line 119
    :cond_6
    move-object v7, v3

    .line 120
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    if-eqz v3, :cond_7

    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-eqz v3, :cond_7

    .line 131
    .line 132
    const-string v8, "business_type"

    .line 133
    .line 134
    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    goto :goto_6

    .line 139
    :cond_7
    move-object v3, v15

    .line 140
    :goto_6
    if-nez v3, :cond_8

    .line 141
    .line 142
    move-object v9, v4

    .line 143
    goto :goto_7

    .line 144
    :cond_8
    move-object v9, v3

    .line 145
    :goto_7
    const/16 v12, 0xd8

    .line 146
    .line 147
    const/4 v13, 0x0

    .line 148
    const/4 v8, 0x0

    .line 149
    const/4 v10, 0x0

    .line 150
    const/4 v11, 0x0

    .line 151
    const/16 v16, 0x0

    .line 152
    .line 153
    move-object v3, v14

    .line 154
    move-object v4, v5

    .line 155
    move-object v5, v6

    .line 156
    move-object v6, v7

    .line 157
    move-object v7, v8

    .line 158
    move-object v8, v10

    .line 159
    move v10, v11

    .line 160
    move-object/from16 v11, v16

    .line 161
    .line 162
    invoke-direct/range {v3 .. v13}, Lteam/opay/swarmfoundation/payment/PayInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {v2, v14}, Lcashier/data/CashierInput;-><init>(Lteam/opay/swarmfoundation/payment/PayInput;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {p0 .. p0}, Lcashier/quickpay/QuickPayActivity;->K()Lcashier/util/CurrencyAmount;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    if-eqz v3, :cond_9

    .line 173
    .line 174
    invoke-virtual {v3}, Lcashier/util/CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    :cond_9
    invoke-virtual {v2, v15}, Lcashier/data/CashierInput;->d(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Lcashier/model/CashierViewModel;->w0(Lcashier/data/CashierInput;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {p0 .. p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-interface {v2}, Lcashier/net/IPaymentApi;->getSdkLogVersion()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v1, v2}, Lcashier/data/CashierInput;->e(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual/range {p0 .. p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 212
    .line 213
    .line 214
    move-result-wide v2

    .line 215
    invoke-virtual {v1, v2, v3}, Lcashier/model/CashierViewModel;->I0(J)V

    .line 216
    .line 217
    .line 218
    const/4 v1, 0x1

    .line 219
    invoke-virtual {v0, v1}, Lcashier/quickpay/QuickPayActivity;->O(Z)V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public final K()Lcashier/util/CurrencyAmount;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/quickpay/QuickPayActivity;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcashier/util/CurrencyAmount;

    .line 8
    .line 9
    return-object v0
.end method

.method public M()Lcashier/quickpay/QuickPaymentApi;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcashier/quickpay/QuickPaymentApi;

    .line 2
    .line 3
    invoke-direct {v0}, Lcashier/quickpay/QuickPaymentApi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final N()Lcashier/model/PaymentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/quickpay/QuickPayActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcashier/model/PaymentManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final O(Z)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v2, p1

    .line 3
    .line 4
    invoke-virtual {p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v13, Lcashier/data/NewPaymentInfoRequest;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v14, 0x0

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v3}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v3, v14

    .line 31
    :goto_0
    if-nez v3, :cond_1

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    :cond_1
    move-object v4, v3

    .line 36
    invoke-virtual {p0}, Lcashier/quickpay/QuickPayActivity;->K()Lcashier/util/CurrencyAmount;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/16 v11, 0x7c

    .line 41
    .line 42
    const/4 v12, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    move-object v3, v13

    .line 49
    invoke-direct/range {v3 .. v12}, Lcashier/data/NewPaymentInfoRequest;-><init>(Ljava/lang/String;Lcashier/util/CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v13}, Lcashier/model/CashierViewModel;->y0(Lcashier/data/NewPaymentInfoRequest;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcashier/quickpay/QuickPayActivity;->L()Lcashier/quickpay/QuickMethodManager;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcashier/quickpay/QuickPayActivity;->N()Lcashier/model/PaymentManager;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcashier/model/PaymentManager;->w()Lcashier/data/PaymentItem;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {v3}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move-object v3, v14

    .line 75
    :goto_1
    invoke-virtual {p0}, Lcashier/quickpay/QuickPayActivity;->N()Lcashier/model/PaymentManager;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lcashier/model/PaymentManager;->w()Lcashier/data/PaymentItem;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    if-eqz v4, :cond_3

    .line 84
    .line 85
    invoke-virtual {v4}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    invoke-virtual {v4}, Lcashier/data/Card;->h()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    move-object v4, v14

    .line 97
    :goto_2
    new-instance v6, Lcashier/quickpay/QuickPayActivity$loadInfo$1;

    .line 98
    .line 99
    invoke-direct {v6, v2, p0}, Lcashier/quickpay/QuickPayActivity$loadInfo$1;-><init>(ZLcashier/quickpay/QuickPayActivity;)V

    .line 100
    .line 101
    .line 102
    new-instance v7, Lcashier/quickpay/QuickPayActivity$loadInfo$2;

    .line 103
    .line 104
    invoke-direct {v7, v2, p0}, Lcashier/quickpay/QuickPayActivity$loadInfo$2;-><init>(ZLcashier/quickpay/QuickPayActivity;)V

    .line 105
    .line 106
    .line 107
    const/16 v8, 0x8

    .line 108
    .line 109
    const/4 v9, 0x0

    .line 110
    const/4 v5, 0x0

    .line 111
    move/from16 v2, p1

    .line 112
    .line 113
    invoke-static/range {v1 .. v9}, Lcashier/quickpay/QuickMethodManager;->j(Lcashier/quickpay/QuickMethodManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final P(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcashier/quickpay/QuickPayActivity;->O(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final Q(Lcashier/PayResult;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcashier/PayResult;->c()Lcashier/CashierResult;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v1, Lcashier/quickpay/QuickPayActivity$a;->a:[I

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    aget p1, v1, p1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq p1, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq p1, v1, :cond_0

    .line 26
    .line 27
    const/16 p1, 0xc9

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/16 p1, 0xcd

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/16 p1, 0xcb

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/16 p1, 0xca

    .line 37
    .line 38
    :goto_0
    const-string v1, "resultCode"

    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 p1, 0x0

    .line 63
    :goto_1
    if-nez p1, :cond_4

    .line 64
    .line 65
    const-string p1, ""

    .line 66
    .line 67
    :cond_4
    const-string v1, "orderNo"

    .line 68
    .line 69
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    new-instance p1, Landroid/content/Intent;

    .line 73
    .line 74
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v1, "key_web_scheme_result_result_data"

    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v0, "Intent().putExtra(\n     \u2026json.toString()\n        )"

    .line 88
    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 v0, -0x1

    .line 93
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final R()V
    .locals 36

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v2, "card_id"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    const-string v2, ""

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    move-object v0, v2

    .line 27
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    const-string v4, "pay_channel"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v3, v1

    .line 47
    :goto_1
    if-nez v3, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    move-object v2, v3

    .line 51
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_6

    .line 60
    .line 61
    invoke-virtual {v3}, Lcashier/data/CashierInfoRsp;->l()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_6

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_5

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    move-object v5, v4

    .line 82
    check-cast v5, Lcashier/data/PayChannelItem;

    .line 83
    .line 84
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_4

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    move-object v4, v1

    .line 96
    :goto_3
    check-cast v4, Lcashier/data/PayChannelItem;

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_6
    move-object v4, v1

    .line 100
    :goto_4
    if-nez v4, :cond_7

    .line 101
    .line 102
    new-instance v3, Lcashier/data/PayChannelItem;

    .line 103
    .line 104
    move-object v4, v3

    .line 105
    const v28, 0x7ffffe

    .line 106
    .line 107
    .line 108
    const/16 v29, 0x0

    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v7, 0x0

    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v9, 0x0

    .line 114
    const/4 v10, 0x0

    .line 115
    const/4 v11, 0x0

    .line 116
    const/4 v12, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    const/4 v14, 0x0

    .line 119
    const/4 v15, 0x0

    .line 120
    const/16 v16, 0x0

    .line 121
    .line 122
    const/16 v17, 0x0

    .line 123
    .line 124
    const/16 v18, 0x0

    .line 125
    .line 126
    const/16 v19, 0x0

    .line 127
    .line 128
    const/16 v20, 0x0

    .line 129
    .line 130
    const/16 v21, 0x0

    .line 131
    .line 132
    const/16 v22, 0x0

    .line 133
    .line 134
    const/16 v23, 0x0

    .line 135
    .line 136
    const/16 v24, 0x0

    .line 137
    .line 138
    const/16 v25, 0x0

    .line 139
    .line 140
    const/16 v26, 0x0

    .line 141
    .line 142
    const/16 v27, 0x0

    .line 143
    .line 144
    move-object v5, v2

    .line 145
    invoke-direct/range {v4 .. v29}, Lcashier/data/PayChannelItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcashier/util/CurrencyAmount;Lcashier/util/CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Lcashier/data/CashbackInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcashier/data/QuestionMark;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_7
    move-object v3, v4

    .line 150
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcashier/quickpay/QuickPayActivity;->K()Lcashier/util/CurrencyAmount;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v3, v4}, Lcashier/data/PayChannelItem;->u(Lcashier/util/CurrencyAmount;)V

    .line 155
    .line 156
    .line 157
    const-string v4, "BankCard"

    .line 158
    .line 159
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-nez v4, :cond_9

    .line 164
    .line 165
    const-string v4, "BankAccount"

    .line 166
    .line 167
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_8

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_8
    move-object/from16 v35, v1

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_9
    :goto_6
    invoke-virtual {v3}, Lcashier/data/PayChannelItem;->c()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-eqz v2, :cond_8

    .line 182
    .line 183
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-eqz v4, :cond_b

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    move-object v5, v4

    .line 198
    check-cast v5, Lcashier/data/Card;

    .line 199
    .line 200
    invoke-virtual {v5}, Lcashier/data/Card;->h()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-eqz v5, :cond_a

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_b
    move-object v4, v1

    .line 212
    :goto_7
    check-cast v4, Lcashier/data/Card;

    .line 213
    .line 214
    move-object/from16 v35, v4

    .line 215
    .line 216
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcashier/quickpay/QuickPayActivity;->N()Lcashier/model/PaymentManager;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    new-instance v2, Lcashier/data/PaymentItem;

    .line 221
    .line 222
    const/16 v32, 0x1

    .line 223
    .line 224
    const-string v33, "Y"

    .line 225
    .line 226
    const/16 v31, 0x0

    .line 227
    .line 228
    move-object/from16 v30, v2

    .line 229
    .line 230
    move-object/from16 v34, v3

    .line 231
    .line 232
    invoke-direct/range {v30 .. v35}, Lcashier/data/PaymentItem;-><init>(IZLjava/lang/String;Lcashier/data/PayChannelItem;Lcashier/data/Card;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v2}, Lcashier/model/PaymentManager;->K(Lcashier/data/PaymentItem;)V

    .line 236
    .line 237
    .line 238
    invoke-direct/range {p0 .. p0}, Lcashier/quickpay/QuickPayActivity;->L()Lcashier/quickpay/QuickMethodManager;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcashier/quickpay/QuickMethodManager;->h()Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_c

    .line 255
    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    check-cast v2, Lcashier/data/PaymentItem;

    .line 261
    .line 262
    invoke-virtual/range {p0 .. p0}, Lcashier/quickpay/QuickPayActivity;->N()Lcashier/model/PaymentManager;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v3}, Lcashier/model/PaymentManager;->w()Lcashier/data/PaymentItem;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v2, v3}, Lcashier/data/PaymentItem;->i(Lcashier/data/PaymentItem;)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    invoke-virtual {v2, v3}, Lcashier/data/PaymentItem;->j(Z)V

    .line 275
    .line 276
    .line 277
    goto :goto_9

    .line 278
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 279
    .line 280
    .line 281
    move-result-wide v2

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcashier/ui/BasePayActivity;->A()Lcashier/model/CashierViewModel;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->l0()J

    .line 287
    .line 288
    .line 289
    move-result-wide v4

    .line 290
    sub-long/2addr v2, v4

    .line 291
    sget-object v4, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 292
    .line 293
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    const-string v2, "show_time"

    .line 298
    .line 299
    invoke-static {v2, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcashier/quickpay/QuickPayActivity;->N()Lcashier/model/PaymentManager;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v2}, Lcashier/model/PaymentManager;->w()Lcashier/data/PaymentItem;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    if-eqz v2, :cond_d

    .line 312
    .line 313
    invoke-virtual {v2}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    :cond_d
    const-string v2, "main_paychannel"

    .line 318
    .line 319
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    const/4 v2, 0x2

    .line 324
    new-array v6, v2, [Lkotlin/Pair;

    .line 325
    .line 326
    const/4 v2, 0x0

    .line 327
    aput-object v0, v6, v2

    .line 328
    .line 329
    const/4 v0, 0x1

    .line 330
    aput-object v1, v6, v0

    .line 331
    .line 332
    const/4 v8, 0x4

    .line 333
    const/4 v9, 0x0

    .line 334
    const-string v5, "COMMON_pay_window_show"

    .line 335
    .line 336
    const/4 v7, 0x0

    .line 337
    invoke-static/range {v4 .. v9}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual/range {p0 .. p0}, Lcashier/quickpay/QuickPayActivity;->N()Lcashier/model/PaymentManager;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcashier/model/PaymentManager;->Z()V

    .line 345
    .line 346
    .line 347
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    if-ne p2, p1, :cond_1

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    const-string p1, "data"

    .line 13
    .line 14
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcashier/quickpay/QuickPayActivity;->N()Lcashier/model/PaymentManager;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p3, "type"

    .line 31
    .line 32
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const-string v0, "jsonObject.optString(\"type\")"

    .line 37
    .line 38
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "input"

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const-string v0, "jsonObject.optString(\"input\")"

    .line 48
    .line 49
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p3, p2}, Lcashier/model/PaymentManager;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    nop

    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic z()Lcashier/net/IPaymentApi;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/quickpay/QuickPayActivity;->M()Lcashier/quickpay/QuickPaymentApi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
