.class public final synthetic Lteam/opay/pay/pin/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lteam/opay/pay/pin/AppLockPasswordFragment;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/pay/pin/AppLockPasswordFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/pin/a;->a:Lteam/opay/pay/pin/AppLockPasswordFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/a;->a:Lteam/opay/pay/pin/AppLockPasswordFragment;

    .line 2
    .line 3
    check-cast p1, Lteam/opay/pay/pin/LoginTypeData;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lteam/opay/pay/pin/AppLockPasswordFragment$init$1$1;->g(Lteam/opay/pay/pin/AppLockPasswordFragment;Lteam/opay/pay/pin/LoginTypeData;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
