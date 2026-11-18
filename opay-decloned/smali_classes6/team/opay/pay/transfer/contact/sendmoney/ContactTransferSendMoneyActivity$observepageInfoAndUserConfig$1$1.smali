.class final Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ContactTransferSendMoneyActivity.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lhm6<",
        "Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
        "Lteam/opay/core/api/graphql/RecipientUserInfo;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "pageInfo",
        "Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
        "userInfo",
        "Lteam/opay/core/api/graphql/RecipientUserInfo;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.transfer.contact.sendmoney.ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1"
    f = "ContactTransferSendMoneyActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;

    check-cast p2, Lteam/opay/core/api/graphql/RecipientUserInfo;

    check-cast p3, Ljr2;

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;->invoke(Lteam/opay/core/api/graphql/AASendMoneyPageInfo;Lteam/opay/core/api/graphql/RecipientUserInfo;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lteam/opay/core/api/graphql/AASendMoneyPageInfo;Lteam/opay/core/api/graphql/RecipientUserInfo;Ljr2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
            "Lteam/opay/core/api/graphql/RecipientUserInfo;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;

    iget-object v1, p0, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;

    invoke-direct {v0, v1, p3}, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;Ljr2;)V

    iput-object p1, v0, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v6, p1

    .line 14
    check-cast v6, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;

    .line 15
    .line 16
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;->L$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lteam/opay/core/api/graphql/RecipientUserInfo;

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/RecipientUserInfo;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v2, v1

    .line 31
    :goto_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/RecipientUserInfo;->getMobile()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v3, v1

    .line 39
    :goto_1
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/RecipientUserInfo;->getPhotoUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_2
    move-object v4, v1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/RecipientUserInfo;->isOpenAccount()Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const/4 p1, 0x0

    .line 63
    :goto_2
    invoke-static {p1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity$observepageInfoAndUserConfig$1$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;

    .line 68
    .line 69
    invoke-static {v1}, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;->H(Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    move-object v1, v2

    .line 74
    move-object v2, v3

    .line 75
    move-object v3, v4

    .line 76
    move-object v4, p1

    .line 77
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;->K(Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/graphql/AASendMoneyPageInfo;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method
