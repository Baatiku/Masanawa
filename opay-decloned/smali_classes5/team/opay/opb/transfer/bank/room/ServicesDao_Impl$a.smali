.class public final Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "ServicesDao_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/opb/transfer/bank/room/Service;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "team/opay/opb/transfer/bank/room/ServicesDao_Impl$a",
        "Landroidx/room/EntityInsertAdapter;",
        "Lteam/opay/opb/transfer/bank/room/Service;",
        "",
        "b",
        "()Ljava/lang/String;",
        "Ld2d;",
        "statement",
        "entity",
        "",
        "e",
        "(Ld2d;Lteam/opay/opb/transfer/bank/room/Service;)V",
        "business-transfer-bank_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld2d;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/opb/transfer/bank/room/Service;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/transfer/bank/room/ServicesDao_Impl$a;->e(Ld2d;Lteam/opay/opb/transfer/bank/room/Service;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `Service` (`id`,`type`,`available`,`enabled`,`termsAndConditionsAccepted`,`maxVerify`,`maxMessage`,`min_value`,`min_currency`,`max_value`,`max_currency`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/opb/transfer/bank/room/Service;)V
    .locals 4

    .line 1
    const-string v0, "statement"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "entity"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/Service;->c()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/Service;->k()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p1, v0, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/Service;->a()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x3

    .line 32
    int-to-long v2, v0

    .line 33
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/Service;->b()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x4

    .line 41
    int-to-long v2, v0

    .line 42
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/Service;->j()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x5

    .line 50
    int-to-long v2, v0

    .line 51
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/Service;->f()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x6

    .line 59
    int-to-long v2, v0

    .line 60
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x7

    .line 64
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/Service;->e()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {p1, v0, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/Service;->g()Lteam/opay/core/common/amount/MoneyAmount;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lteam/opay/core/common/amount/MoneyAmount;->getValue()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/16 v2, 0x8

    .line 80
    .line 81
    if-nez v1, :cond_0

    .line 82
    .line 83
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-interface {p1, v2, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    const/16 v1, 0x9

    .line 91
    .line 92
    invoke-virtual {v0}, Lteam/opay/core/common/amount/MoneyAmount;->getCurrency()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/Service;->d()Lteam/opay/core/common/amount/MoneyAmount;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2}, Lteam/opay/core/common/amount/MoneyAmount;->getValue()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/16 v1, 0xa

    .line 108
    .line 109
    if-nez v0, :cond_1

    .line 110
    .line 111
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_1
    const/16 v0, 0xb

    .line 119
    .line 120
    invoke-virtual {p2}, Lteam/opay/core/common/amount/MoneyAmount;->getCurrency()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-interface {p1, v0, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
