.class public final Lteam/opay/pay/cashier/BaseCashierManager$a;
.super Ljava/lang/Object;
.source "BaseCashierManager.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/cashier/BaseCashierManager;-><init>(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/cashier/BaseCashierManager;


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashier/BaseCashierManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager$a;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/settings/AddInstrumentNotify;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/settings/AddInstrumentNotify;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/settings/AddInstrumentNotify;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    new-instance p2, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "id"

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/settings/AddInstrumentNotify;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager$a;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 22
    .line 23
    invoke-static {p1}, Lteam/opay/pay/cashier/BaseCashierManager;->access$getAddCardCallback$p(Lteam/opay/pay/cashier/BaseCashierManager;)Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager$a;->a:Lteam/opay/pay/cashier/BaseCashierManager;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-static {p1, p2}, Lteam/opay/pay/cashier/BaseCashierManager;->access$setAddCardCallback$p(Lteam/opay/pay/cashier/BaseCashierManager;Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/settings/AddInstrumentNotify;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/BaseCashierManager$a;->c(Lteam/opay/pay/settings/AddInstrumentNotify;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
