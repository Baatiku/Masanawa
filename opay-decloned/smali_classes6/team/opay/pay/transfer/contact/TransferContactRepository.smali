.class public final Lteam/opay/pay/transfer/contact/TransferContactRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "TransferContactRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B-\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000f0\u000e2\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000f0\u000e2\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ#\u0010\u001f\u001a\u00020\u001d2\u0014\u0010\u001e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u001d0\u001c\u00a2\u0006\u0004\u0008\u001f\u0010 J!\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000f0\u000e2\u0006\u0010\r\u001a\u00020!\u00a2\u0006\u0004\u0008\"\u0010#J!\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000f0\u000e2\u0006\u0010\r\u001a\u00020$\u00a2\u0006\u0004\u0008%\u0010&J!\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\u000f0\u000e2\u0006\u0010\r\u001a\u00020\'\u00a2\u0006\u0004\u0008)\u0010*J!\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000f0\u000e2\u0006\u0010\r\u001a\u00020+\u00a2\u0006\u0004\u0008,\u0010-J!\u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020.0\u000f0\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008/\u0010\u0012J\u0019\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000\u000f0\u000e\u00a2\u0006\u0004\u00081\u00102J!\u00104\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002030\u000f0\u000e2\u0006\u0010\r\u001a\u00020+\u00a2\u0006\u0004\u00084\u0010-J+\u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002070\u000f0\u000e2\u0006\u0010\u0019\u001a\u0002052\u0008\u0008\u0002\u00106\u001a\u00020\u0015\u00a2\u0006\u0004\u00088\u00109R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010C\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010B\u00a8\u0006D"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/TransferContactRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lteam/opay/pay/transfer/contact/TransferContactDao;",
        "transferContactDao",
        "Lteam/opay/pay/transfer/a;",
        "acTransferContactDao",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/transfer/contact/TransferContactDao;Lteam/opay/pay/transfer/a;)V",
        "Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;",
        "req",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
        "u",
        "(Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;)Landroidx/lifecycle/LiveData;",
        "",
        "orderNo",
        "",
        "x",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/transaction/SaveBeneficiaryReqV3;",
        "body",
        "y",
        "(Lteam/opay/pay/transaction/SaveBeneficiaryReqV3;)Landroidx/lifecycle/LiveData;",
        "Lkotlin/Function1;",
        "",
        "callback",
        "o",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Lteam/opay/pay/transfer/contact/bean/DeleteContactReq;",
        "l",
        "(Lteam/opay/pay/transfer/contact/bean/DeleteContactReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/transfer/contact/bean/DeleteContactReqV2;",
        "m",
        "(Lteam/opay/pay/transfer/contact/bean/DeleteContactReqV2;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/transfer/contact/bean/PreOrderReq;",
        "Lteam/opay/pay/transfer/contact/bean/PreOrderRsp;",
        "t",
        "(Lteam/opay/pay/transfer/contact/bean/PreOrderReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;",
        "j",
        "(Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/api/FreeResponse;",
        "s",
        "Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;",
        "n",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/transfer/contact/bean/CheckContactsStatus;",
        "k",
        "Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;",
        "saveData",
        "Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;",
        "v",
        "(Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Z)Landroidx/lifecycle/LiveData;",
        "d",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "e",
        "Lteam/opay/pay/transfer/contact/TransferContactDao;",
        "f",
        "Lteam/opay/pay/transfer/a;",
        "Lfv;",
        "g",
        "Lfv;",
        "api",
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
.field public final d:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/pay/transfer/contact/TransferContactDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Lteam/opay/pay/transfer/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Lfv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/transfer/contact/TransferContactDao;Lteam/opay/pay/transfer/a;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/transfer/contact/TransferContactDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/transfer/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appExecutors"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/core/android/arch/BaseRepository;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p3, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->e:Lteam/opay/pay/transfer/contact/TransferContactDao;

    .line 17
    .line 18
    iput-object p4, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->f:Lteam/opay/pay/transfer/a;

    .line 19
    .line 20
    sget-object p2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 21
    .line 22
    const-class p3, Lfv;

    .line 23
    .line 24
    invoke-virtual {p2, p1, p3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lfv;

    .line 29
    .line 30
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->g:Lfv;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic e(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->p(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->q(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->r(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/pay/transfer/contact/TransferContactRepository;)Lteam/opay/pay/transfer/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->f:Lteam/opay/pay/transfer/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lteam/opay/pay/transfer/contact/TransferContactRepository;)Lfv;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->g:Lfv;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final p(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->f:Lteam/opay/pay/transfer/a;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object v4, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 10
    .line 11
    invoke-virtual {v4}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-interface {p0, v4}, Lteam/opay/pay/transfer/a;->a(Ljava/lang/String;)Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move-object p0, v3

    .line 27
    :goto_0
    new-instance v4, Lh4f;

    .line 28
    .line 29
    invoke-direct {v4, p1, p0}, Lh4f;-><init>(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2, v4, v0, v3}, Lfke;->f(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    sget-object v4, Lx7b;->a:Lx7b;

    .line 37
    .line 38
    const-string v5, "error"

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v5, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-array v5, v0, [Lkotlin/Pair;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    aput-object p0, v5, v6

    .line 52
    .line 53
    const-string p0, "get_ac_local_error"

    .line 54
    .line 55
    invoke-virtual {v4, p0, v5}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 56
    .line 57
    .line 58
    new-instance p0, Li4f;

    .line 59
    .line 60
    invoke-direct {p0, p1}, Li4f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2, p0, v0, v3}, Lfke;->f(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :goto_2
    return-void
.end method

.method public static final q(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final r(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method public static synthetic w(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->v(Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Z)Landroidx/lifecycle/LiveData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final j(Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/transfer/contact/TransferContactRepository$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$a;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final k(Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/transfer/contact/bean/CheckContactsStatus;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/transfer/contact/TransferContactRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$b;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final l(Lteam/opay/pay/transfer/contact/bean/DeleteContactReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/transfer/contact/bean/DeleteContactReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/bean/DeleteContactReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/transfer/contact/TransferContactRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$c;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/DeleteContactReq;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final m(Lteam/opay/pay/transfer/contact/bean/DeleteContactReqV2;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/transfer/contact/bean/DeleteContactReqV2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/bean/DeleteContactReqV2;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/transfer/contact/TransferContactRepository$d;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$d;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/DeleteContactReqV2;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final n()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/transfer/contact/TransferContactRepository$e;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$e;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final o(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lg4f;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lg4f;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final s(Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/api/FreeResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/transfer/contact/TransferContactRepository$f;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$f;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final t(Lteam/opay/pay/transfer/contact/bean/PreOrderReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/transfer/contact/bean/PreOrderReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/bean/PreOrderReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/transfer/contact/bean/PreOrderRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/transfer/contact/TransferContactRepository$g;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$g;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/PreOrderReq;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final u(Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->l()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final v(Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Z)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;",
            "Z)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/transfer/contact/TransferContactRepository$i;

    .line 9
    .line 10
    invoke-direct {v1, p2, p0, p1, v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$i;-><init>(ZLteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->l()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final x(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "orderNo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/transfer/contact/TransferContactRepository$j;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$j;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final y(Lteam/opay/pay/transaction/SaveBeneficiaryReqV3;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/transaction/SaveBeneficiaryReqV3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transaction/SaveBeneficiaryReqV3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/transfer/contact/TransferContactRepository$k;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$k;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transaction/SaveBeneficiaryReqV3;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
