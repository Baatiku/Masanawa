.class final Lteam/opay/pay/home/clipboard/parser/BankAccountParser$getBankAccountDetail$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BankAccountParser.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/clipboard/parser/BankAccountParser;->j(Lteam/opay/pay/home/tabs/BankTransferViewModel;Ljava/lang/String;Ljava/lang/String;Ljr2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lhm6<",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/pay/api/BankStatus;",
        ">;",
        "Lteam/opay/pay/api/BankUserInfo;",
        "Ljr2<",
        "-",
        "Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\n"
    }
    d2 = {
        "<anonymous>",
        "Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;",
        "banks",
        "",
        "Lteam/opay/pay/api/BankStatus;",
        "bankUserInfo",
        "Lteam/opay/pay/api/BankUserInfo;"
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
    c = "team.opay.pay.home.clipboard.parser.BankAccountParser$getBankAccountDetail$2"
    f = "BankAccountParser.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljr2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/clipboard/parser/BankAccountParser$getBankAccountDetail$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Lteam/opay/pay/api/BankUserInfo;

    check-cast p3, Ljr2;

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$getBankAccountDetail$2;->invoke(Ljava/util/List;Lteam/opay/pay/api/BankUserInfo;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;Lteam/opay/pay/api/BankUserInfo;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/api/BankStatus;",
            ">;",
            "Lteam/opay/pay/api/BankUserInfo;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$getBankAccountDetail$2;

    invoke-direct {v0, p3}, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$getBankAccountDetail$2;-><init>(Ljr2;)V

    iput-object p1, v0, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$getBankAccountDetail$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$getBankAccountDetail$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$getBankAccountDetail$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$getBankAccountDetail$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$getBankAccountDetail$2;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$getBankAccountDetail$2;->L$1:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lteam/opay/pay/api/BankUserInfo;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lteam/opay/pay/api/BankStatus;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p1, v1

    .line 30
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/pay/api/BankStatus;->getBankStatusType()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "2"

    .line 39
    .line 40
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    new-instance v1, Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;

    .line 47
    .line 48
    invoke-direct {v1, p1, v0}, Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;-><init>(Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/api/BankUserInfo;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-object v1

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method
