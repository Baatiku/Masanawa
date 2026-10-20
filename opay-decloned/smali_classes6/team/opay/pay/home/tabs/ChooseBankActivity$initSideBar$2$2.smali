.class final Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChooseBankActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.home.tabs.ChooseBankActivity$initSideBar$2$2"
    f = "ChooseBankActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $mLetterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/tabs/ChooseBankActivity;Ljava/util/ArrayList;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/tabs/ChooseBankActivity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;->$mLetterList:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;->$mLetterList:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;-><init>(Lteam/opay/pay/home/tabs/ChooseBankActivity;Ljava/util/ArrayList;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ChooseBankActivity;->V()Lke;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lke;->g:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;->$mLetterList:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ChooseBankActivity$initSideBar$2$2;->this$0:Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/InitialsLetterBar;->setLetters(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/16 v3, 0x10

    .line 37
    .line 38
    invoke-static {v3}, Ljmf;->d(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    mul-int v3, v3, v0

    .line 43
    .line 44
    const/16 v4, 0x8

    .line 45
    .line 46
    invoke-static {v4}, Ljmf;->d(I)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    add-int/lit8 v0, v0, -0x1

    .line 51
    .line 52
    mul-int v4, v4, v0

    .line 53
    .line 54
    add-int/2addr v3, v4

    .line 55
    invoke-static {v1}, Ljmf;->q(Landroid/content/Context;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {v1}, Lteam/opay/swarmfoundation/utils/StatusBarUtil;->d(Landroid/content/Context;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    sub-int/2addr v0, v1

    .line 64
    const/16 v1, 0x90

    .line 65
    .line 66
    invoke-static {v1}, Ljmf;->d(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sub-int/2addr v0, v1

    .line 71
    if-le v3, v0, :cond_0

    .line 72
    .line 73
    move v3, v0

    .line 74
    :cond_0
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method
