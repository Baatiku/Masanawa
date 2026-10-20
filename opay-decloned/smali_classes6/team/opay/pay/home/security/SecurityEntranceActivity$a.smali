.class public final Lteam/opay/pay/home/security/SecurityEntranceActivity$a;
.super Ljava/lang/Object;
.source "SecurityEntranceActivity.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/security/SecurityEntranceActivity;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic a:Lteam/opay/pay/home/security/SecurityEntranceActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/security/SecurityEntranceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/SecurityEntranceActivity$a;->a:Lteam/opay/pay/home/security/SecurityEntranceActivity;

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
    iget-object p2, p0, Lteam/opay/pay/home/security/SecurityEntranceActivity$a;->a:Lteam/opay/pay/home/security/SecurityEntranceActivity;

    .line 2
    .line 3
    invoke-virtual {p2}, Lteam/opay/pay/home/security/SecurityEntranceActivity;->Z()Ljg;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p2, p2, Ljg;->d:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v0, "loading"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/core/api/SessionMessage;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/home/security/SecurityEntranceActivity$a;->a:Lteam/opay/pay/home/security/SecurityEntranceActivity;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/pay/home/security/SecurityEntranceActivity;->O(Lteam/opay/pay/home/security/SecurityEntranceActivity;)Lteam/opay/pay/home/security/SecretSecurityViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->I()Lteam/opay/core/api/e;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p2}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$User;->l()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p2, 0x0

    .line 49
    :goto_0
    invoke-static {p1, p2}, Lteam/opay/pay/home/security/SecurityEntranceActivity;->Q(Lteam/opay/pay/home/security/SecurityEntranceActivity;Z)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lteam/opay/pay/home/security/SecurityEntranceActivity$a;->a:Lteam/opay/pay/home/security/SecurityEntranceActivity;

    .line 53
    .line 54
    invoke-static {p1}, Lteam/opay/pay/home/security/SecurityEntranceActivity;->P(Lteam/opay/pay/home/security/SecurityEntranceActivity;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Lteam/opay/pay/home/security/SecurityEntranceActivity$a;->a:Lteam/opay/pay/home/security/SecurityEntranceActivity;

    .line 61
    .line 62
    invoke-static {p1}, Lteam/opay/pay/home/security/SecurityEntranceActivity;->R(Lteam/opay/pay/home/security/SecurityEntranceActivity;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    sget-object v0, Lteam/opay/pay/account/verify/VerifyActivity;->l:Lteam/opay/pay/account/verify/VerifyActivity$Companion;

    .line 67
    .line 68
    iget-object v1, p0, Lteam/opay/pay/home/security/SecurityEntranceActivity$a;->a:Lteam/opay/pay/home/security/SecurityEntranceActivity;

    .line 69
    .line 70
    sget-object v2, Lteam/opay/pay/account/verify/ModifyType;->SET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 71
    .line 72
    const/16 v7, 0x1c

    .line 73
    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    const-string v6, "setting_set_payment_pin"

    .line 79
    .line 80
    invoke-static/range {v0 .. v8}, Lteam/opay/pay/account/verify/VerifyActivity$Companion;->b(Lteam/opay/pay/account/verify/VerifyActivity$Companion;Landroid/app/Activity;Lteam/opay/pay/account/verify/ModifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object p2, p0, Lteam/opay/pay/home/security/SecurityEntranceActivity$a;->a:Lteam/opay/pay/home/security/SecurityEntranceActivity;

    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1}, Lteam/opay/core/api/SessionMessage;->a()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p2, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/api/SessionMessage;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/security/SecurityEntranceActivity$a;->c(Lteam/opay/core/api/SessionMessage;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
