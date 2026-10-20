.class public final Lteam/opay/pay/home/security/ForgetPasswordEntranceActivity$a;
.super Ljava/lang/Object;
.source "ForgetPasswordEntranceActivity.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/security/ForgetPasswordEntranceActivity;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic a:Lteam/opay/pay/home/security/ForgetPasswordEntranceActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/security/ForgetPasswordEntranceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/ForgetPasswordEntranceActivity$a;->a:Lteam/opay/pay/home/security/ForgetPasswordEntranceActivity;

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
    .locals 7
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
    const-string v0, "scheme_forget_password"

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
    sget-object v0, Lteam/opay/pay/home/security/ForgotPasswordActivity;->h:Lteam/opay/pay/home/security/ForgotPasswordActivity$Companion;

    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/pay/home/security/ForgetPasswordEntranceActivity$a;->a:Lteam/opay/pay/home/security/ForgetPasswordEntranceActivity;

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const-string v4, "OTHERS"

    .line 21
    .line 22
    move-object v2, p1

    .line 23
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/home/security/ForgotPasswordActivity$Companion;->b(Lteam/opay/pay/home/security/ForgotPasswordActivity$Companion;Landroid/content/Context;Lteam/opay/pay/account/verify/VerifyEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lteam/opay/pay/home/security/ForgetPasswordEntranceActivity$a;->a:Lteam/opay/pay/home/security/ForgetPasswordEntranceActivity;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/account/verify/VerifyEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/security/ForgetPasswordEntranceActivity$a;->c(Lteam/opay/pay/account/verify/VerifyEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
