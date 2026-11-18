.class public Lteam/opay/pay/bank/BanksDao_Impl$b;
.super Landroidx/room/EntityInsertAdapter;
.source "BanksDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/bank/BanksDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/pay/bank/BankFields;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/bank/BanksDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/bank/BanksDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/bank/BanksDao_Impl$b;->a:Lteam/opay/pay/bank/BanksDao_Impl;

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
    check-cast p2, Lteam/opay/pay/bank/BankFields;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/bank/BanksDao_Impl$b;->e(Ld2d;Lteam/opay/pay/bank/BankFields;)V

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
    const-string v0, "INSERT OR ABORT INTO `BankFields` (`bankCode`,`birthDateRequired`,`emailRequired`,`firstNameRequired`,`lastNameRequired`) VALUES (?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/pay/bank/BankFields;)V
    .locals 4
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/bank/BankFields;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/bank/BankFields;->a()Ljava/lang/String;

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
    invoke-virtual {p2}, Lteam/opay/pay/bank/BankFields;->a()Ljava/lang/String;

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
    invoke-virtual {p2}, Lteam/opay/pay/bank/BankFields;->b()Z

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
    invoke-virtual {p2}, Lteam/opay/pay/bank/BankFields;->c()Z

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
    invoke-virtual {p2}, Lteam/opay/pay/bank/BankFields;->d()Z

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
    invoke-virtual {p2}, Lteam/opay/pay/bank/BankFields;->e()Z

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
