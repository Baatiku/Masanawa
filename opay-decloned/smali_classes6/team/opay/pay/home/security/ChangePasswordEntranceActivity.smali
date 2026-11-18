.class public final Lteam/opay/pay/home/security/ChangePasswordEntranceActivity;
.super Lteam/opay/pay/android/NoBindingActivity;
.source "ChangePasswordEntranceActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lteam/opay/pay/home/security/ChangePasswordEntranceActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_content_transparent:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/android/NoBindingActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/home/security/ChangePasswordEntranceActivity$a;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/home/security/ChangePasswordEntranceActivity$a;-><init>(Lteam/opay/pay/home/security/ChangePasswordEntranceActivity;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "verify_pool_result_key"

    .line 12
    .line 13
    invoke-virtual {p1, p0, v1, v0}, Lteam/opay/pay/util/FlowBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lteam/opay/pay/home/security/ChangePasswordEntranceActivity$b;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lteam/opay/pay/home/security/ChangePasswordEntranceActivity$b;-><init>(Lteam/opay/pay/home/security/ChangePasswordEntranceActivity;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "verify_pool_exit_key"

    .line 22
    .line 23
    invoke-virtual {p1, p0, v1, v0}, Lteam/opay/pay/util/FlowBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Lteam/opay/pay/account/verify/VerifyActivity;->l:Lteam/opay/pay/account/verify/VerifyActivity$Companion;

    .line 27
    .line 28
    sget-object v4, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_PASSWORD:Lteam/opay/pay/account/verify/ModifyType;

    .line 29
    .line 30
    const/16 v9, 0x1c

    .line 31
    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const-string v8, "scheme_modify_password"

    .line 37
    .line 38
    move-object v3, p0

    .line 39
    invoke-static/range {v2 .. v10}, Lteam/opay/pay/account/verify/VerifyActivity$Companion;->b(Lteam/opay/pay/account/verify/VerifyActivity$Companion;Landroid/app/Activity;Lteam/opay/pay/account/verify/ModifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
