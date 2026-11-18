.class public final Lteam/opay/pay/home/security/paypin/ChangePinEntranceActivity$a;
.super Ljava/lang/Object;
.source "ChangePinEntranceActivity.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/security/paypin/ChangePinEntranceActivity;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic a:Lteam/opay/pay/home/security/paypin/ChangePinEntranceActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/security/paypin/ChangePinEntranceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/paypin/ChangePinEntranceActivity$a;->a:Lteam/opay/pay/home/security/paypin/ChangePinEntranceActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/account/verify/VerifyEvent;Ljr2;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyEvent;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRequestCode()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "scheme_change_payment_pin"

    .line 6
    .line 7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    sget-object v0, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->i:Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;

    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/pay/home/security/paypin/ChangePinEntranceActivity$a;->a:Lteam/opay/pay/home/security/paypin/ChangePinEntranceActivity;

    .line 16
    .line 17
    const/16 v6, 0x10

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v3, 0x2

    .line 21
    const/4 v4, 0x3

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v2, p1

    .line 24
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;->b(Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;Landroid/content/Context;Lteam/opay/pay/account/verify/VerifyEvent;IILjava/lang/String;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/home/security/paypin/ChangePinEntranceActivity$a;->a:Lteam/opay/pay/home/security/paypin/ChangePinEntranceActivity;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/account/verify/VerifyEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/security/paypin/ChangePinEntranceActivity$a;->c(Lteam/opay/pay/account/verify/VerifyEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
