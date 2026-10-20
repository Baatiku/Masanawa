.class public final Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;
.super Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;
.source "ElectricityPlanDao_Impl.java"


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/payment/electricity/kenya/ElectricityPlan;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lteam/opay/pay/database/RoomTypeConverters;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/pay/database/RoomTypeConverters;

    .line 5
    .line 6
    invoke-direct {v0}, Lteam/opay/pay/database/RoomTypeConverters;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;->c:Lteam/opay/pay/database/RoomTypeConverters;

    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    new-instance p1, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl$a;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl$a;-><init>(Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic b(Lz1d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;->e(Lz1d;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic c(Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;)Lteam/opay/pay/database/RoomTypeConverters;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;->c:Lteam/opay/pay/database/RoomTypeConverters;

    .line 2
    .line 3
    return-object p0
.end method

.method public static d()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lz1d;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM ElectricityPlan"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lz1d;->a1(Ljava/lang/String;)Ld2d;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-interface {p0}, Ld2d;->W0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ld2d;->close()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-interface {p0}, Ld2d;->close()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lsh5;

    .line 4
    .line 5
    invoke-direct {v1}, Lsh5;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v0, v2, v3, v1}, Ljz2;->c(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
