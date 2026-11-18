.class public Lteam/opay/pay/payment/airtime/AirtimeBundleDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "AirtimeBundleDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/airtime/AirtimeBundleDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/pay/payment/airtime/AirtimeBundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/payment/airtime/AirtimeBundleDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/airtime/AirtimeBundleDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/airtime/AirtimeBundleDao_Impl$a;->a:Lteam/opay/pay/payment/airtime/AirtimeBundleDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld2d;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lteam/opay/pay/payment/airtime/AirtimeBundle;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtime/AirtimeBundleDao_Impl$a;->e(Ld2d;Lteam/opay/pay/payment/airtime/AirtimeBundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "INSERT OR ABORT INTO `AirtimeBundle` (`id`,`discount`,`amount_valueString`,`amount_currency`,`price_valueString`,`price_currency`,`cashback_valueString`,`cashback_currency`) VALUES (?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/pay/payment/airtime/AirtimeBundle;)V
    .locals 4
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/airtime/AirtimeBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/payment/airtime/AirtimeBundle;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/payment/airtime/AirtimeBundle;->d()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2}, Lteam/opay/pay/payment/airtime/AirtimeBundle;->c()Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/payment/airtime/AirtimeBundle;->c()Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    float-to-double v2, v0

    .line 39
    invoke-interface {p1, v1, v2, v3}, Ld2d;->b(ID)V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p2}, Lteam/opay/pay/payment/airtime/AirtimeBundle;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x3

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {p1, v2, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x4

    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v2, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_3
    invoke-virtual {p2}, Lteam/opay/pay/payment/airtime/AirtimeBundle;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/4 v2, 0x5

    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {p1, v2, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_4
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const/4 v2, 0x6

    .line 109
    if-nez v1, :cond_5

    .line 110
    .line 111
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_5
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {p1, v2, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_5
    invoke-virtual {p2}, Lteam/opay/pay/payment/airtime/AirtimeBundle;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const/4 v1, 0x7

    .line 131
    if-nez v0, :cond_6

    .line 132
    .line 133
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_6
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_6
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const/16 v1, 0x8

    .line 149
    .line 150
    if-nez v0, :cond_7

    .line 151
    .line 152
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_7
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-interface {p1, v1, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :goto_7
    return-void
.end method
