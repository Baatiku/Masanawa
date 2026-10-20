.class public final Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$b;
.super Ljava/lang/Object;
.source "OpayTransferSendMoneyFragmentV2.kt"

# interfaces
.implements Lteam/opay/pay/transfer/SpiltOrderView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "team/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$b",
        "Lteam/opay/pay/transfer/SpiltOrderView$a;",
        "",
        "show",
        "",
        "default_check",
        "",
        "a",
        "(ZLjava/lang/String;)V",
        "userCheck",
        "b",
        "(Ljava/lang/String;)V",
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
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "default_check"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lx7b;->a:Lx7b;

    .line 9
    .line 10
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Lkotlin/Pair;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    aput-object p2, v0, v1

    .line 19
    .line 20
    const-string p2, "ac_to_aa_enter_money_split_options_show"

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "userCheck"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lx7b;->a:Lx7b;

    .line 7
    .line 8
    const-string v1, "user_check"

    .line 9
    .line 10
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v1, v1, [Lkotlin/Pair;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object p1, v1, v2

    .line 19
    .line 20
    const-string p1, "ac_to_aa_enter_money_split_options_click"

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
