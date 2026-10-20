.class public Lteam/opay/pay/address/AddressDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "AddressDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/address/AddressDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/pay/address/Address;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/address/AddressDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/address/AddressDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/address/AddressDao_Impl$a;->a:Lteam/opay/pay/address/AddressDao_Impl;

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
    check-cast p2, Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/address/AddressDao_Impl$a;->e(Ld2d;Lteam/opay/pay/address/Address;)V

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
    const-string v0, "INSERT OR ABORT INTO `Address` (`code`,`name`,`parent_code`) VALUES (?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/pay/address/Address;)V
    .locals 3
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/address/Address;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/address/Address;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-interface {p1, v2, v0, v1}, Ld2d;->c(IJ)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lteam/opay/pay/address/Address;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/address/Address;->b()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/4 v0, 0x3

    .line 28
    invoke-virtual {p2}, Lteam/opay/pay/address/Address;->c()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-interface {p1, v0, v1, v2}, Ld2d;->c(IJ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
