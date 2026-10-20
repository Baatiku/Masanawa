.class public final Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "BanksDao_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/transfer/bank/room/BanksDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/business/core/bank/BankInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "team/opay/opb/transfer/bank/room/BanksDao_Impl$a",
        "Landroidx/room/EntityInsertAdapter;",
        "Lteam/opay/business/core/bank/BankInfo;",
        "",
        "b",
        "()Ljava/lang/String;",
        "Ld2d;",
        "statement",
        "entity",
        "",
        "e",
        "(Ld2d;Lteam/opay/business/core/bank/BankInfo;)V",
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
    check-cast p2, Lteam/opay/business/core/bank/BankInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$a;->e(Ld2d;Lteam/opay/business/core/bank/BankInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR IGNORE INTO `BankInfo` (`code`,`name`,`type`,`icon`,`isSupportBankAccount`,`countryCode`,`letter`,`businessType`,`tag`,`altCode`,`serviceType`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/business/core/bank/BankInfo;)V
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
    invoke-virtual {p2}, Lteam/opay/business/core/bank/BankInfo;->getCode()Ljava/lang/String;

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
    invoke-virtual {p2}, Lteam/opay/business/core/bank/BankInfo;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p1, v0, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    invoke-virtual {p2}, Lteam/opay/business/core/bank/BankInfo;->getType()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {p1, v0, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    invoke-virtual {p2}, Lteam/opay/business/core/bank/BankInfo;->getIcon()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {p1, v0, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lteam/opay/business/core/bank/BankInfo;->isSupportBankAccount()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x5

    .line 48
    int-to-long v2, v0

    .line 49
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x6

    .line 53
    invoke-virtual {p2}, Lteam/opay/business/core/bank/BankInfo;->getCountryCode()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {p1, v0, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x7

    .line 61
    invoke-virtual {p2}, Lteam/opay/business/core/bank/BankInfo;->getLetter()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {p1, v0, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lteam/opay/business/core/bank/BankInfo;->getBusinessType()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    int-to-long v0, v0

    .line 73
    const/16 v2, 0x8

    .line 74
    .line 75
    invoke-interface {p1, v2, v0, v1}, Ld2d;->c(IJ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lteam/opay/business/core/bank/BankInfo;->getTag()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    int-to-long v0, v0

    .line 83
    const/16 v2, 0x9

    .line 84
    .line 85
    invoke-interface {p1, v2, v0, v1}, Ld2d;->c(IJ)V

    .line 86
    .line 87
    .line 88
    const/16 v0, 0xa

    .line 89
    .line 90
    invoke-virtual {p2}, Lteam/opay/business/core/bank/BankInfo;->getAltCode()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {p1, v0, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/16 v0, 0xb

    .line 98
    .line 99
    invoke-virtual {p2}, Lteam/opay/business/core/bank/BankInfo;->getServiceType()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-interface {p1, v0, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
