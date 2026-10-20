.class public final Lteam/opay/pay/home/security/paypin/PayPinInputFragment$b;
.super Ljava/lang/Object;
.source "PayPinInputFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/security/paypin/PayPinInputFragment;->Z()V
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
.field public final synthetic a:Lteam/opay/pay/home/security/paypin/PayPinInputFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/security/paypin/PayPinInputFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/paypin/PayPinInputFragment$b;->a:Lteam/opay/pay/home/security/paypin/PayPinInputFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/core/api/SessionMessage;Ljr2;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/SessionMessage;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/api/SessionMessage;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/home/security/paypin/PayPinInputFragment$b;->a:Lteam/opay/pay/home/security/paypin/PayPinInputFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/home/security/paypin/PayPinInputFragment;->X(Lteam/opay/pay/home/security/paypin/PayPinInputFragment;)Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->G0()Lteam/opay/core/api/e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$User;->l()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lteam/opay/pay/home/security/paypin/PayPinInputFragment$b;->a:Lteam/opay/pay/home/security/paypin/PayPinInputFragment;

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/core/base/BaseSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object p1, p0, Lteam/opay/pay/home/security/paypin/PayPinInputFragment$b;->a:Lteam/opay/pay/home/security/paypin/PayPinInputFragment;

    .line 40
    .line 41
    sget p2, Lteam/opay/pay/R$string;->set_payment_pin_tip:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string p1, "getString(...)"

    .line 48
    .line 49
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lteam/opay/pay/home/security/paypin/PayPinInputFragment$b;->a:Lteam/opay/pay/home/security/paypin/PayPinInputFragment;

    .line 53
    .line 54
    invoke-static {p1}, Lteam/opay/pay/home/security/paypin/PayPinInputFragment;->X(Lteam/opay/pay/home/security/paypin/PayPinInputFragment;)Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const/16 v7, 0x48

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v2, 0x1

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x1

    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-static/range {v0 .. v8}, Lteam/opay/pay/home/security/paypin/a;->b(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZLjava/lang/String;ILteam/opay/pay/cashier/PaySheetViewModel;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/api/SessionMessage;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/security/paypin/PayPinInputFragment$b;->c(Lteam/opay/core/api/SessionMessage;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
