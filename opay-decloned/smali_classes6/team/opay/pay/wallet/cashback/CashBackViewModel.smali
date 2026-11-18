.class public final Lteam/opay/pay/wallet/cashback/CashBackViewModel;
.super Lteam/opay/pay/android/arch/BaseViewModel;
.source "CashBackViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/wallet/cashback/CashBackViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 W2\u00020\u00012\u00020\u0002:\u0001aB!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ1\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J)\u0010\u0019\u001a\u00020\u00182\u001a\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014j\n\u0012\u0004\u0012\u00020\u0015\u0018\u0001`\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\'\u0010\u001b\u001a\u00020\u000e2\u0016\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\u0008\u0012\u0004\u0012\u00020\u0015`\u0016H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010+\u001a\u00020\u00188\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R-\u00101\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\u0008\u0012\u0004\u0012\u00020\u0015`\u00160,8\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R\u001d\u00105\u001a\u0008\u0012\u0004\u0012\u0002020,8\u0006\u00a2\u0006\u000c\n\u0004\u00083\u0010.\u001a\u0004\u00084\u00100R\u001d\u00109\u001a\u0008\u0012\u0004\u0012\u0002060,8\u0006\u00a2\u0006\u000c\n\u0004\u00087\u0010.\u001a\u0004\u00088\u00100R\u001d\u0010=\u001a\u0008\u0012\u0004\u0012\u00020:0,8\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010.\u001a\u0004\u0008<\u00100R\u0018\u0010@\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\"\u0010G\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\"\u0010N\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\"\u0010R\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010I\u001a\u0004\u0008P\u0010K\"\u0004\u0008Q\u0010MR\"\u0010T\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010I\u001a\u0004\u0008T\u0010K\"\u0004\u0008U\u0010MR\u0014\u0010Y\u001a\u00020V8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010XR\u0014\u0010]\u001a\u00020Z8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010\\R\u0016\u0010`\u001a\u0004\u0018\u00010^8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010_\u00a8\u0006b"
    }
    d2 = {
        "Lteam/opay/pay/wallet/cashback/CashBackViewModel;",
        "Lteam/opay/pay/android/arch/BaseViewModel;",
        "Lteam/opay/core/api/e;",
        "Ls22;",
        "cashBackWebService",
        "sessionProvider",
        "Lteam/opay/core/api/Features;",
        "features",
        "<init>",
        "(Ls22;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V",
        "Lag8;",
        "viewLifecycleOwner",
        "",
        "operationType",
        "",
        "isDividerFirstPage",
        "threeMonth",
        "",
        "t",
        "(Lag8;Ljava/lang/String;ZLjava/lang/String;)V",
        "Ljava/util/ArrayList;",
        "Lteam/opay/core/api/graphql/CashBackBean;",
        "Lkotlin/collections/ArrayList;",
        "list",
        "",
        "s",
        "(Ljava/util/ArrayList;)I",
        "C",
        "(Ljava/util/ArrayList;)Z",
        "c",
        "Ls22;",
        "",
        "d",
        "J",
        "getLastId",
        "()J",
        "setLastId",
        "(J)V",
        "lastId",
        "e",
        "I",
        "w",
        "()I",
        "pageSize",
        "Landroidx/lifecycle/MutableLiveData;",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "x",
        "()Landroidx/lifecycle/MutableLiveData;",
        "pagedTransactions",
        "Lteam/opay/pay/kyc/base/ErrorMsg;",
        "g",
        "v",
        "errorMsgLiveData",
        "Lteam/opay/core/android/arch/Status;",
        "h",
        "y",
        "pagedTransactionsStatus",
        "Lteam/opay/core/api/graphql/CashBackRsp;",
        "i",
        "z",
        "rspEvent",
        "j",
        "Ljava/lang/Long;",
        "lastMonth",
        "k",
        "Ljava/lang/String;",
        "A",
        "()Ljava/lang/String;",
        "setWithInThreeMonth",
        "(Ljava/lang/String;)V",
        "withInThreeMonth",
        "l",
        "Z",
        "B",
        "()Z",
        "setDividerFirst",
        "(Z)V",
        "isDividerFirst",
        "m",
        "getNeedAddViewMore",
        "setNeedAddViewMore",
        "needAddViewMore",
        "n",
        "isLoading",
        "setLoading",
        "Lteam/opay/core/api/Country;",
        "o",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "p",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "Companion",
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


# static fields
.field public static final o:Lteam/opay/pay/wallet/cashback/CashBackViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final synthetic b:Lteam/opay/core/api/e;

.field public final c:Ls22;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:J

.field public final e:I

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/api/graphql/CashBackBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/ErrorMsg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/CashBackRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/wallet/cashback/CashBackViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->o:Lteam/opay/pay/wallet/cashback/CashBackViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ls22;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V
    .locals 1
    .param p1    # Ls22;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/Features;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cashBackWebService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "features"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p3}, Lteam/opay/pay/android/arch/BaseViewModel;-><init>(Lteam/opay/core/api/Features;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->b:Lteam/opay/core/api/e;

    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->c:Ls22;

    .line 22
    .line 23
    const/16 p1, 0x14

    .line 24
    .line 25
    iput p1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->e:I

    .line 26
    .line 27
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    const-string p1, "Month"

    .line 56
    .line 57
    iput-object p1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->k:Ljava/lang/String;

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->l:Z

    .line 61
    .line 62
    iput-boolean p1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->m:Z

    .line 63
    .line 64
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/wallet/cashback/CashBackViewModel;ZLjava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/ApiResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->u(Lteam/opay/pay/wallet/cashback/CashBackViewModel;ZLjava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/ApiResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u(Lteam/opay/pay/wallet/cashback/CashBackViewModel;ZLjava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/ApiResponse;)Lkotlin/Unit;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    instance-of v2, v1, Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    iget-object v2, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    check-cast v1, Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/core/android/arch/ApiErrorResponse;->c()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-object v2, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    sget-object v4, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lteam/opay/core/android/arch/ApiErrorResponse;->d()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lteam/opay/core/android/arch/ApiError;

    .line 44
    .line 45
    iget-object v2, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    new-instance v10, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Lteam/opay/core/android/arch/ApiError;->getApiCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v5, v4

    .line 58
    :goto_0
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Lteam/opay/core/android/arch/ApiError;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    move-object v6, v1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v6, v4

    .line 67
    :goto_1
    const/4 v8, 0x4

    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    move-object v4, v10

    .line 71
    invoke-direct/range {v4 .. v9}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iput-boolean v3, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->n:Z

    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_4
    instance-of v2, v1, Lteam/opay/core/android/arch/ApiSuccessResponse;

    .line 82
    .line 83
    if-eqz v2, :cond_c

    .line 84
    .line 85
    check-cast v1, Lteam/opay/core/android/arch/ApiSuccessResponse;

    .line 86
    .line 87
    invoke-virtual {v1}, Lteam/opay/core/android/arch/ApiSuccessResponse;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lteam/opay/core/api/graphql/CashBackRsp;

    .line 92
    .line 93
    new-instance v4, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lteam/opay/core/android/arch/ApiSuccessResponse;->c()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lteam/opay/core/api/graphql/CashBackRsp;

    .line 103
    .line 104
    if-eqz v1, :cond_9

    .line 105
    .line 106
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/CashBackRsp;->c()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_9

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_9

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Lteam/opay/core/api/graphql/CashBackMonthSummery;

    .line 127
    .line 128
    sget-object v6, Lyke;->a:Lyke;

    .line 129
    .line 130
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/CashBackMonthSummery;->b()J

    .line 131
    .line 132
    .line 133
    move-result-wide v7

    .line 134
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    iget-object v8, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->j:Ljava/lang/Long;

    .line 139
    .line 140
    invoke-virtual {v6, v7, v8}, Lyke;->c(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-nez v6, :cond_5

    .line 145
    .line 146
    new-instance v6, Lteam/opay/core/api/graphql/CashBackMonthTitle;

    .line 147
    .line 148
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/CashBackMonthSummery;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/CashBackMonthSummery;->c()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/CashBackMonthSummery;->b()J

    .line 157
    .line 158
    .line 159
    move-result-wide v10

    .line 160
    move-object v7, v6

    .line 161
    move-object/from16 v12, p3

    .line 162
    .line 163
    invoke-direct/range {v7 .. v12}, Lteam/opay/core/api/graphql/CashBackMonthTitle;-><init>(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;JLjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v13, Lteam/opay/core/api/graphql/CashBackBean;

    .line 167
    .line 168
    const/4 v11, 0x2

    .line 169
    const/4 v12, 0x0

    .line 170
    const/4 v8, 0x1

    .line 171
    const/4 v9, 0x0

    .line 172
    move-object v7, v13

    .line 173
    move-object v10, v6

    .line 174
    invoke-direct/range {v7 .. v12}, Lteam/opay/core/api/graphql/CashBackBean;-><init>(ILteam/opay/core/api/graphql/CashBackItem;Lteam/opay/core/api/graphql/CashBackMonthTitle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/CashBackMonthSummery;->b()J

    .line 181
    .line 182
    .line 183
    move-result-wide v6

    .line 184
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    iput-object v6, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->j:Ljava/lang/Long;

    .line 189
    .line 190
    :cond_5
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/CashBackMonthSummery;->d()Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    if-eqz v6, :cond_8

    .line 195
    .line 196
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    const/4 v7, 0x0

    .line 201
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    if-eqz v8, :cond_8

    .line 206
    .line 207
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    add-int/lit8 v9, v7, 0x1

    .line 212
    .line 213
    if-gez v7, :cond_6

    .line 214
    .line 215
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 216
    .line 217
    .line 218
    :cond_6
    check-cast v8, Lteam/opay/core/api/graphql/CashBackItem;

    .line 219
    .line 220
    new-instance v15, Lteam/opay/core/api/graphql/CashBackBean;

    .line 221
    .line 222
    const/4 v14, 0x4

    .line 223
    const/16 v16, 0x0

    .line 224
    .line 225
    const/4 v11, 0x2

    .line 226
    const/4 v13, 0x0

    .line 227
    move-object v10, v15

    .line 228
    move-object v12, v8

    .line 229
    move-object v3, v15

    .line 230
    move-object/from16 v15, v16

    .line 231
    .line 232
    invoke-direct/range {v10 .. v15}, Lteam/opay/core/api/graphql/CashBackBean;-><init>(ILteam/opay/core/api/graphql/CashBackItem;Lteam/opay/core/api/graphql/CashBackMonthTitle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/CashBackMonthSummery;->d()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    add-int/lit8 v3, v3, -0x1

    .line 247
    .line 248
    if-ne v7, v3, :cond_7

    .line 249
    .line 250
    invoke-virtual {v8}, Lteam/opay/core/api/graphql/CashBackItem;->a()J

    .line 251
    .line 252
    .line 253
    move-result-wide v7

    .line 254
    iput-wide v7, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->d:J

    .line 255
    .line 256
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/CashBackMonthSummery;->d()Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    new-instance v10, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v11, "lastId:"

    .line 270
    .line 271
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v7, " size:"

    .line 278
    .line 279
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    :cond_7
    move v7, v9

    .line 286
    const/4 v3, 0x0

    .line 287
    goto :goto_3

    .line 288
    :cond_8
    const/4 v3, 0x0

    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    :cond_9
    invoke-virtual {v0, v4}, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->s(Ljava/util/ArrayList;)I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    iget v3, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->e:I

    .line 296
    .line 297
    const-string v5, "Month"

    .line 298
    .line 299
    if-ge v1, v3, :cond_a

    .line 300
    .line 301
    iget-object v1, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->k:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_a

    .line 308
    .line 309
    invoke-virtual {v0, v4}, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->C(Ljava/util/ArrayList;)Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-nez v1, :cond_a

    .line 314
    .line 315
    iget-boolean v1, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->m:Z

    .line 316
    .line 317
    if-eqz v1, :cond_a

    .line 318
    .line 319
    new-instance v1, Lteam/opay/core/api/graphql/CashBackBean;

    .line 320
    .line 321
    const/4 v10, 0x6

    .line 322
    const/4 v11, 0x0

    .line 323
    const/4 v7, 0x3

    .line 324
    const/4 v8, 0x0

    .line 325
    const/4 v9, 0x0

    .line 326
    move-object v6, v1

    .line 327
    invoke-direct/range {v6 .. v11}, Lteam/opay/core/api/graphql/CashBackBean;-><init>(ILteam/opay/core/api/graphql/CashBackItem;Lteam/opay/core/api/graphql/CashBackMonthTitle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    const/4 v1, 0x0

    .line 334
    iput-boolean v1, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->m:Z

    .line 335
    .line 336
    :cond_a
    iget-object v1, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 337
    .line 338
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    iget-object v1, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 342
    .line 343
    sget-object v3, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 344
    .line 345
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    if-eqz p1, :cond_b

    .line 349
    .line 350
    move-object/from16 v1, p2

    .line 351
    .line 352
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_b

    .line 357
    .line 358
    iget-object v1, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 359
    .line 360
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    :cond_b
    const/4 v1, 0x0

    .line 364
    iput-boolean v1, v0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->n:Z

    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_c
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 368
    .line 369
    .line 370
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 371
    .line 372
    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final C(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/api/graphql/CashBackBean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->s(Ljava/util/ArrayList;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->l:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->k:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "Month"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->b:Lteam/opay/core/api/e;

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

.method public final s(Ljava/util/ArrayList;)I
    .locals 4
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/api/graphql/CashBackBean;",
            ">;)I"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lteam/opay/core/api/graphql/CashBackBean;

    .line 26
    .line 27
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/CashBackBean;->a()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x2

    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public final t(Lag8;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewLifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "operationType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "threeMonth"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->n:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iput-boolean p3, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->l:Z

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    iput-object p4, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->k:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "Month"

    .line 29
    .line 30
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    iput-wide v1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->d:J

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->j:Ljava/lang/Long;

    .line 42
    .line 43
    iput-boolean v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->m:Z

    .line 44
    .line 45
    :cond_1
    iput-boolean v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->n:Z

    .line 46
    .line 47
    iget-object v2, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->c:Ls22;

    .line 48
    .line 49
    iget-wide v3, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->d:J

    .line 50
    .line 51
    iget v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->e:I

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-object v7, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->k:Ljava/lang/String;

    .line 58
    .line 59
    move-object v5, p2

    .line 60
    invoke-interface/range {v2 .. v7}, Ls22;->a(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lp22;

    .line 65
    .line 66
    invoke-direct {v1, p0, p3, p4, p2}, Lp22;-><init>(Lteam/opay/pay/wallet/cashback/CashBackViewModel;ZLjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, p1, v1}, Lnna;->c(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final v()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/ErrorMsg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final x()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/api/graphql/CashBackBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/CashBackRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/cashback/CashBackViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method
