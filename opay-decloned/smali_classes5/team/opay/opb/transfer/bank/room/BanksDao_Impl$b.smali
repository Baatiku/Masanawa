.class public final Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$b;
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
        "Lteam/opay/opb/transfer/bank/room/BankFields;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "team/opay/opb/transfer/bank/room/BanksDao_Impl$b",
        "Landroidx/room/EntityInsertAdapter;",
        "Lteam/opay/opb/transfer/bank/room/BankFields;",
        "",
        "b",
        "()Ljava/lang/String;",
        "Ld2d;",
        "statement",
        "entity",
        "",
        "e",
        "(Ld2d;Lteam/opay/opb/transfer/bank/room/BankFields;)V",
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
    check-cast p2, Lteam/opay/opb/transfer/bank/room/BankFields;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/transfer/bank/room/BanksDao_Impl$b;->e(Ld2d;Lteam/opay/opb/transfer/bank/room/BankFields;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR ABORT INTO `BankFields` (`bankCode`,`birthDateRequired`,`emailRequired`,`firstNameRequired`,`lastNameRequired`) VALUES (?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/opb/transfer/bank/room/BankFields;)V
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
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/BankFields;->a()Ljava/lang/String;

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
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/BankFields;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    int-to-long v2, v0

    .line 25
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/BankFields;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x3

    .line 33
    int-to-long v2, v0

    .line 34
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/BankFields;->d()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x4

    .line 42
    int-to-long v2, v0

    .line 43
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/room/BankFields;->e()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const/4 v0, 0x5

    .line 51
    int-to-long v1, p2

    .line 52
    invoke-interface {p1, v0, v1, v2}, Ld2d;->c(IJ)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
