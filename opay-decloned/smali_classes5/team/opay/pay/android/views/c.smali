.class public final synthetic Lteam/opay/pay/android/views/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

.field public final synthetic b:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/android/views/c;->a:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/android/views/c;->b:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 7
    .line 8
    iput-boolean p3, p0, Lteam/opay/pay/android/views/c;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/c;->a:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/android/views/c;->b:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 4
    .line 5
    iget-boolean v2, p0, Lteam/opay/pay/android/views/c;->c:Z

    .line 6
    .line 7
    check-cast p1, Lteam/opay/core/android/arch/Resource;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;->a(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
