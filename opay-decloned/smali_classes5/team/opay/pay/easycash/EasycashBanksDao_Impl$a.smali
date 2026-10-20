.class public Lteam/opay/pay/easycash/EasycashBanksDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "EasycashBanksDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/easycash/EasycashBanksDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/pay/easycash/EasycashBank;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/easycash/EasycashBanksDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/easycash/EasycashBanksDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/easycash/EasycashBanksDao_Impl$a;->a:Lteam/opay/pay/easycash/EasycashBanksDao_Impl;

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
    check-cast p2, Lteam/opay/pay/easycash/EasycashBank;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/easycash/EasycashBanksDao_Impl$a;->e(Ld2d;Lteam/opay/pay/easycash/EasycashBank;)V

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
    const-string v0, "INSERT OR ABORT INTO `easycash_banks` (`code`,`name`,`flow`,`minAmount`,`maxAmount`,`fields`) VALUES (?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/pay/easycash/EasycashBank;)V
    .locals 2
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/easycash/EasycashBank;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/easycash/EasycashBank;->a()Ljava/lang/String;

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
    invoke-virtual {p2}, Lteam/opay/pay/easycash/EasycashBank;->a()Ljava/lang/String;

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
    invoke-virtual {p2}, Lteam/opay/pay/easycash/EasycashBank;->f()Ljava/lang/String;

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
    invoke-virtual {p2}, Lteam/opay/pay/easycash/EasycashBank;->f()Ljava/lang/String;

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
    iget-object v0, p0, Lteam/opay/pay/easycash/EasycashBanksDao_Impl$a;->a:Lteam/opay/pay/easycash/EasycashBanksDao_Impl;

    .line 38
    .line 39
    invoke-static {v0}, Lteam/opay/pay/easycash/EasycashBanksDao_Impl;->a(Lteam/opay/pay/easycash/EasycashBanksDao_Impl;)Lteam/opay/pay/database/RoomTypeConverters;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2}, Lteam/opay/pay/easycash/EasycashBank;->c()Lteam/opay/pay/easycash/EasycashFlow;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lteam/opay/pay/database/RoomTypeConverters;->d(Lteam/opay/pay/easycash/EasycashFlow;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x3

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-virtual {p2}, Lteam/opay/pay/easycash/EasycashBank;->e()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v1, 0x4

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {p2}, Lteam/opay/pay/easycash/EasycashBank;->e()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_3
    invoke-virtual {p2}, Lteam/opay/pay/easycash/EasycashBank;->d()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/4 v1, 0x5

    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_4
    invoke-virtual {p2}, Lteam/opay/pay/easycash/EasycashBank;->d()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_4
    iget-object v0, p0, Lteam/opay/pay/easycash/EasycashBanksDao_Impl$a;->a:Lteam/opay/pay/easycash/EasycashBanksDao_Impl;

    .line 98
    .line 99
    invoke-static {v0}, Lteam/opay/pay/easycash/EasycashBanksDao_Impl;->a(Lteam/opay/pay/easycash/EasycashBanksDao_Impl;)Lteam/opay/pay/database/RoomTypeConverters;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p2}, Lteam/opay/pay/easycash/EasycashBank;->b()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {v0, p2}, Lteam/opay/pay/database/RoomTypeConverters;->c(Ljava/util/List;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    const/4 v0, 0x6

    .line 112
    if-nez p2, :cond_5

    .line 113
    .line 114
    invoke-interface {p1, v0}, Ld2d;->l(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_5
    invoke-interface {p1, v0, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_5
    return-void
.end method
