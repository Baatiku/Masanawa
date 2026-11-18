.class public final Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "NewWalletDetailsViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001SB\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001d\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0014\u0010\u000eJ\r\u0010\u0015\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\u0017\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR+\u0010&\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010\u00180 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R+\u0010*\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\'\u0018\u00010\u00180 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010#\u001a\u0004\u0008)\u0010%R+\u0010.\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010+\u0018\u00010\u00180 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010#\u001a\u0004\u0008-\u0010%R!\u00102\u001a\u0008\u0012\u0004\u0012\u00020/0 8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010#\u001a\u0004\u00081\u0010%R!\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00080 8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010#\u001a\u0004\u00084\u0010%R\u001b\u0010:\u001a\u0002068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u0010#\u001a\u0004\u00088\u00109R\u001b\u0010?\u001a\u00020;8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010#\u001a\u0004\u0008=\u0010>R$\u0010F\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u0014\u0010J\u001a\u00020G8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010IR\u0014\u0010N\u001a\u00020K8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010MR\u0016\u0010R\u001a\u0004\u0018\u00010O8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010Q\u00a8\u0006T"
    }
    d2 = {
        "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "sessionProvider",
        "Landroid/app/Application;",
        "appLi",
        "<init>",
        "(Lteam/opay/core/api/e;Landroid/app/Application;)V",
        "",
        "forceRefresh",
        "Lag8;",
        "owner",
        "",
        "H",
        "(ZLag8;)V",
        "Z",
        "O",
        "(Lag8;)V",
        "U",
        "()Z",
        "W",
        "Y",
        "()V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/graphql/WalletDetailMoreData;",
        "S",
        "()Landroidx/lifecycle/LiveData;",
        "b",
        "Lteam/opay/core/api/e;",
        "c",
        "Landroid/app/Application;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
        "d",
        "Lid8;",
        "J",
        "()Landroidx/lifecycle/MutableLiveData;",
        "accountdetailV2Result",
        "Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;",
        "e",
        "R",
        "upgradeBannerResult",
        "Lteam/opay/pay/transaction/TransactionsHistoryRspV2;",
        "f",
        "Q",
        "transactionHistoryResult",
        "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;",
        "g",
        "N",
        "newWalletDetailsData",
        "h",
        "M",
        "hidLoading",
        "Lxt;",
        "i",
        "K",
        "()Lxt;",
        "api",
        "Lfv;",
        "j",
        "L",
        "()Lfv;",
        "apiService",
        "k",
        "Lteam/opay/core/api/graphql/WalletDetailMoreData;",
        "T",
        "()Lteam/opay/core/api/graphql/WalletDetailMoreData;",
        "b0",
        "(Lteam/opay/core/api/graphql/WalletDetailMoreData;)V",
        "walletMoreData",
        "Lteam/opay/core/api/Country;",
        "o",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "p",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "m",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "NewWalletDetailsData",
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


# instance fields
.field public final b:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lteam/opay/core/api/graphql/WalletDetailMoreData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/api/e;Landroid/app/Application;)V
    .locals 1
    .param p1    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sessionProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appLi"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->b:Lteam/opay/core/api/e;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->c:Landroid/app/Application;

    .line 17
    .line 18
    new-instance p1, Lsv9;

    .line 19
    .line 20
    invoke-direct {p1}, Lsv9;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->d:Lid8;

    .line 28
    .line 29
    new-instance p1, Ltv9;

    .line 30
    .line 31
    invoke-direct {p1}, Ltv9;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->e:Lid8;

    .line 39
    .line 40
    new-instance p1, Luv9;

    .line 41
    .line 42
    invoke-direct {p1}, Luv9;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->f:Lid8;

    .line 50
    .line 51
    new-instance p1, Lvv9;

    .line 52
    .line 53
    invoke-direct {p1}, Lvv9;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->g:Lid8;

    .line 61
    .line 62
    new-instance p1, Lwv9;

    .line 63
    .line 64
    invoke-direct {p1}, Lwv9;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->h:Lid8;

    .line 72
    .line 73
    new-instance p1, Lxv9;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lxv9;-><init>(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->i:Lid8;

    .line 83
    .line 84
    new-instance p1, Lyv9;

    .line 85
    .line 86
    invoke-direct {p1, p0}, Lyv9;-><init>(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->j:Lid8;

    .line 94
    .line 95
    return-void
.end method

.method public static synthetic A(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)Lxt;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->G(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)Lxt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic B(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic C(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final E()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final F(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)Lfv;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->q()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-class v1, Lfv;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lfv;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final G(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)Lxt;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->q()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final I(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->U()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :cond_0
    sget-object v4, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 21
    .line 22
    if-ne v3, v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :cond_4
    sget-object v4, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 51
    .line 52
    if-ne v3, v4, :cond_5

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_5
    const/4 v1, 0x0

    .line 56
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p0
.end method

.method public static final P(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->U()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :cond_0
    sget-object v4, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 21
    .line 22
    if-ne v3, v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :cond_4
    sget-object v4, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 51
    .line 52
    if-ne v3, v4, :cond_5

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_5
    const/4 v1, 0x0

    .line 56
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p0
.end method

.method public static final V()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final X()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final a0(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->U()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :cond_0
    sget-object v4, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 21
    .line 22
    if-ne v3, v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :cond_4
    sget-object v4, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 51
    .line 52
    if-ne v3, v4, :cond_5

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_5
    const/4 v1, 0x0

    .line 56
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p0
.end method

.method public static final c0()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final d0()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic r(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->I(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->X()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic t(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->P(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic v()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->c0()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic w(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->a0(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic y(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)Lfv;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->F(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)Lfv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final H(ZLag8;)V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/opay/team/home/api/HomeApiService;->a:Lcom/opay/team/home/api/HomeApiService;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->c:Landroid/app/Application;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/opay/team/home/api/HomeApiService;->e(Landroid/content/Context;)Lcom/opay/team/home/api/HomeApiService$a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Lcom/opay/team/home/api/HomeApiService$a;->a()Lretrofit2/Call;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const-class p1, Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->c(Ljava/lang/Class;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Law9;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Law9;-><init>(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final J()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final K()Lxt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxt;

    .line 8
    .line 9
    return-object v0
.end method

.method public final L()Lfv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfv;

    .line 8
    .line 9
    return-object v0
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final N()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final O(Lag8;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v15, Lteam/opay/pay/transaction/TransactionsInput;

    .line 4
    .line 5
    move-object v1, v15

    .line 6
    sget-object v2, Lteam/opay/pay/transaction/HistoryFilter;->a:Lteam/opay/pay/transaction/HistoryFilter;

    .line 7
    .line 8
    invoke-virtual {v2}, Lteam/opay/pay/transaction/HistoryFilter;->k()Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lteam/opay/pay/transaction/HistoryFilter$Filter;->calculateStartDate()Ljava/util/Date;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Lf33;->h(Ljava/util/Date;)Ljava/util/Date;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v3}, Le1f;->i(Ljava/util/Date;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    invoke-virtual {v2}, Lteam/opay/pay/transaction/HistoryFilter;->k()Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lteam/opay/pay/transaction/HistoryFilter$Filter;->calculateEndDate()Ljava/util/Date;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Le1f;->i(Ljava/util/Date;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    const v18, 0xff3c

    .line 37
    .line 38
    .line 39
    const/16 v19, 0x0

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    const/4 v3, 0x5

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v13, 0x0

    .line 51
    const/4 v14, 0x0

    .line 52
    const/16 v16, 0x0

    .line 53
    .line 54
    move-object/from16 v20, v15

    .line 55
    .line 56
    move-object/from16 v15, v16

    .line 57
    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    invoke-direct/range {v1 .. v19}, Lteam/opay/pay/transaction/TransactionsInput;-><init>(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lteam/opay/core/android/arch/RequestBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->L()Lfv;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    move-object/from16 v3, v20

    .line 77
    .line 78
    invoke-interface {v2, v3}, Lfv;->h1(Lteam/opay/pay/transaction/TransactionsInput;)Lretrofit2/Call;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Lbw9;

    .line 91
    .line 92
    invoke-direct {v2, v0}, Lbw9;-><init>(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)V

    .line 93
    .line 94
    .line 95
    move-object/from16 v3, p1

    .line 96
    .line 97
    invoke-static {v1, v3, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final Q()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/transaction/TransactionsHistoryRspV2;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final R()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final S()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/WalletDetailMoreData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->K()Lxt;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lteam/opay/pay/kyc/customer/EmptyReq;

    .line 15
    .line 16
    invoke-direct {v2}, Lteam/opay/pay/kyc/customer/EmptyReq;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lxt;->v(Lteam/opay/pay/kyc/customer/EmptyReq;)Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public final T()Lteam/opay/core/api/graphql/WalletDetailMoreData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->k:Lteam/opay/core/api/graphql/WalletDetailMoreData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public final W(ZLag8;)V
    .locals 2
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->H(ZLag8;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->Companion:Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher$Companion;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher$Companion;->a()Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->shouldShow()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->Z(ZLag8;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->O(Lag8;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final Y()V
    .locals 6

    .line 1
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1;-><init>(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;Ljr2;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final Z(ZLag8;)V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->K()Lxt;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lteam/opay/pay/kyc/customer/EmptyReq;

    .line 15
    .line 16
    invoke-direct {v2}, Lteam/opay/pay/kyc/customer/EmptyReq;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lxt;->H(Lteam/opay/pay/kyc/customer/EmptyReq;)Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-class p1, Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->c(Ljava/lang/Class;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lzv9;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lzv9;-><init>(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final b0(Lteam/opay/core/api/graphql/WalletDetailMoreData;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/graphql/WalletDetailMoreData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->k:Lteam/opay/core/api/graphql/WalletDetailMoreData;

    .line 2
    .line 3
    return-void
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
