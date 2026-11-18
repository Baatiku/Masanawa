.class public final synthetic Lteam/opay/pay/android/views/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lteam/opay/pay/android/validation/ValidationDecorator;

.field public final synthetic b:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

.field public final synthetic c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lteam/opay/pay/android/validation/ValidationDecorator;Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/android/views/a;->a:Lteam/opay/pay/android/validation/ValidationDecorator;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/android/views/a;->b:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/pay/android/views/a;->c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 9
    .line 10
    iput-boolean p4, p0, Lteam/opay/pay/android/views/a;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/a;->a:Lteam/opay/pay/android/validation/ValidationDecorator;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/android/views/a;->b:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/android/views/a;->c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 6
    .line 7
    iget-boolean v3, p0, Lteam/opay/pay/android/views/a;->d:Z

    .line 8
    .line 9
    check-cast p1, Lteam/opay/pay/android/validation/ValidationInfo;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;->c(Lteam/opay/pay/android/validation/ValidationDecorator;Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;ZLteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
