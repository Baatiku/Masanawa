.class public Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "ElectricityPlanDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/pay/payment/electricity/kenya/ElectricityPlan;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl$a;->a:Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;

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
    check-cast p2, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlan;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl$a;->e(Ld2d;Lteam/opay/pay/payment/electricity/kenya/ElectricityPlan;)V

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
    const-string v0, "INSERT OR ABORT INTO `ElectricityPlan` (`id`,`name`,`shortName`) VALUES (?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/pay/payment/electricity/kenya/ElectricityPlan;)V
    .locals 2
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/electricity/kenya/ElectricityPlan;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl$a;->a:Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;->c(Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;)Lteam/opay/pay/database/RoomTypeConverters;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlan;->a()Lteam/opay/core/api/GraphQL$ServiceId;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/pay/database/RoomTypeConverters;->j(Lteam/opay/core/api/GraphQL$ServiceId;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p2}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlan;->b()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x2

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlan;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {p2}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlan;->c()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x3

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {p2}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlan;->c()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-interface {p1, v1, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    return-void
.end method
