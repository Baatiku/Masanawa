.class public Lteam/opay/pay/home/pay/ServicesDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "ServicesDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/pay/ServicesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/pay/home/pay/Service;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/home/pay/ServicesDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/pay/ServicesDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/pay/ServicesDao_Impl$a;->a:Lteam/opay/pay/home/pay/ServicesDao_Impl;

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
    check-cast p2, Lteam/opay/pay/home/pay/Service;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/pay/ServicesDao_Impl$a;->e(Ld2d;Lteam/opay/pay/home/pay/Service;)V

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
    const-string v0, "INSERT OR REPLACE INTO `Service` (`id`,`type`,`available`,`enabled`,`termsAndConditionsAccepted`,`minAmount_valueString`,`minAmount_currency`,`maxAmount_valueString`,`maxAmount_currency`) VALUES (?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/pay/home/pay/Service;)V
    .locals 4
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/home/pay/Service;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/home/pay/Service;->c()Ljava/lang/String;

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
    invoke-virtual {p2}, Lteam/opay/pay/home/pay/Service;->c()Ljava/lang/String;

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
    invoke-virtual {p2}, Lteam/opay/pay/home/pay/Service;->g()Ljava/lang/String;

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
    invoke-virtual {p2}, Lteam/opay/pay/home/pay/Service;->g()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p2}, Lteam/opay/pay/home/pay/Service;->a()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x3

    .line 42
    int-to-long v2, v0

    .line 43
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lteam/opay/pay/home/pay/Service;->b()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x4

    .line 51
    int-to-long v2, v0

    .line 52
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lteam/opay/pay/home/pay/Service;->f()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x5

    .line 60
    int-to-long v2, v0

    .line 61
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v2, 0x6

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {p1, v2, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/4 v2, 0x7

    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {p1, v2, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_3
    invoke-virtual {p2}, Lteam/opay/pay/home/pay/Service;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/16 v1, 0x8

    .line 113
    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_4
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_4
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const/16 v1, 0x9

    .line 132
    .line 133
    if-nez v0, :cond_5

    .line 134
    .line 135
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_5
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-interface {p1, v1, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :goto_5
    return-void
.end method
