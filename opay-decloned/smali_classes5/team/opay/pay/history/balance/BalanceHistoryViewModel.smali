.class public final Lteam/opay/pay/history/balance/BalanceHistoryViewModel;
.super Lteam/opay/pay/android/arch/BaseViewModel;
.source "BalanceHistoryViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/balance/BalanceHistoryViewModel$Companion;,
        Lteam/opay/pay/history/balance/BalanceHistoryViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\t\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 u2\u00020\u00012\u00020\u0002:\u0001vB!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ#\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\'\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J/\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u0019H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ9\u0010\"\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00102\u0008\u0008\u0002\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\"\u0010#J)\u0010%\u001a\u00020$2\u001a\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017j\n\u0012\u0004\u0012\u00020\u0018\u0018\u0001`\u0019\u00a2\u0006\u0004\u0008%\u0010&R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R9\u0010/\u001a$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0010\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u00190*0)8\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u001d\u00103\u001a\u0008\u0012\u0004\u0012\u0002000)8\u0006\u00a2\u0006\u000c\n\u0004\u00081\u0010,\u001a\u0004\u00082\u0010.R\u001d\u00107\u001a\u0008\u0012\u0004\u0012\u0002040)8\u0006\u00a2\u0006\u000c\n\u0004\u00085\u0010,\u001a\u0004\u00086\u0010.R\u001d\u0010;\u001a\u0008\u0012\u0004\u0012\u0002080)8\u0006\u00a2\u0006\u000c\n\u0004\u00089\u0010,\u001a\u0004\u0008:\u0010.R$\u0010C\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR$\u0010G\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010>\u001a\u0004\u0008E\u0010@\"\u0004\u0008F\u0010BR$\u0010K\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010>\u001a\u0004\u0008I\u0010@\"\u0004\u0008J\u0010BR$\u0010R\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\"\u0010Z\u001a\u00020S8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR\u001a\u0010^\u001a\u00020$8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008[\u0010P\u001a\u0004\u0008\\\u0010]R\u0016\u0010`\u001a\u00020S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010UR\"\u0010d\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008a\u0010M\u001a\u0004\u0008b\u0010O\"\u0004\u0008c\u0010QR\"\u0010k\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010f\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR\u0014\u0010n\u001a\u00020l8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008a\u0010mR\u0014\u0010q\u001a\u00020o8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010pR\u0016\u0010t\u001a\u0004\u0018\u00010r8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010s\u00a8\u0006w"
    }
    d2 = {
        "Lteam/opay/pay/history/balance/BalanceHistoryViewModel;",
        "Lteam/opay/pay/android/arch/BaseViewModel;",
        "Lteam/opay/core/api/e;",
        "Lteam/opay/pay/history/balance/BalanceHistoryRepository;",
        "balanceHistoryRepository",
        "sessionProvider",
        "Lteam/opay/core/api/Features;",
        "features",
        "<init>",
        "(Lteam/opay/pay/history/balance/BalanceHistoryRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V",
        "",
        "apiCode",
        "message",
        "",
        "D",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "firstPage",
        "",
        "Lteam/opay/pay/history/balance/BalanceHistoryItem;",
        "list",
        "E",
        "(ZLjava/util/List;)V",
        "Ljava/util/ArrayList;",
        "Lteam/opay/pay/history/balance/BalanceHistoryBean;",
        "Lkotlin/collections/ArrayList;",
        "C",
        "(ZLjava/util/ArrayList;)Z",
        "Lag8;",
        "viewLifecycleOwner",
        "serviceType",
        "isDividerFirstPage",
        "threeMonth",
        "unavailable",
        "t",
        "(Lag8;Ljava/lang/String;ZLjava/lang/String;Z)V",
        "",
        "s",
        "(Ljava/util/ArrayList;)I",
        "c",
        "Lteam/opay/pay/history/balance/BalanceHistoryRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Pair;",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "v",
        "()Landroidx/lifecycle/MutableLiveData;",
        "balanceSuccessEvent",
        "Lteam/opay/pay/kyc/base/ErrorMsg;",
        "e",
        "getErrorMsgLiveData",
        "errorMsgLiveData",
        "Lteam/opay/core/android/arch/Status;",
        "f",
        "A",
        "statusEvent",
        "Lteam/opay/pay/history/balance/BalanceHistoryResponse;",
        "g",
        "z",
        "rspEvent",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "h",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "w",
        "()Lteam/opay/core/android/money/MoneyAmount;",
        "F",
        "(Lteam/opay/core/android/money/MoneyAmount;)V",
        "cashBalance",
        "i",
        "x",
        "G",
        "freezeBalance",
        "j",
        "getOposBalance",
        "H",
        "oposBalance",
        "k",
        "Ljava/lang/String;",
        "getOposBalanceUrl",
        "()Ljava/lang/String;",
        "I",
        "(Ljava/lang/String;)V",
        "oposBalanceUrl",
        "",
        "l",
        "J",
        "getLastId",
        "()J",
        "setLastId",
        "(J)V",
        "lastId",
        "m",
        "y",
        "()I",
        "pageSize",
        "n",
        "lastMonth",
        "o",
        "B",
        "setWithInThreeMonth",
        "withInThreeMonth",
        "p",
        "Z",
        "getNeedAddViewMore",
        "()Z",
        "setNeedAddViewMore",
        "(Z)V",
        "needAddViewMore",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "q",
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
.field public static final q:Lteam/opay/pay/history/balance/BalanceHistoryViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final synthetic b:Lteam/opay/core/api/e;

.field public final c:Lteam/opay/pay/history/balance/BalanceHistoryRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/history/balance/BalanceHistoryBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
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

.field public final f:Landroidx/lifecycle/MutableLiveData;
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

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/history/balance/BalanceHistoryResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lteam/opay/core/android/money/MoneyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lteam/opay/core/android/money/MoneyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lteam/opay/core/android/money/MoneyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:J

.field public final m:I

.field public n:J

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->q:Lteam/opay/pay/history/balance/BalanceHistoryViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/history/balance/BalanceHistoryRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V
    .locals 1
    .param p1    # Lteam/opay/pay/history/balance/BalanceHistoryRepository;
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
    const-string v0, "balanceHistoryRepository"

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
    iput-object p2, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->b:Lteam/opay/core/api/e;

    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->c:Lteam/opay/pay/history/balance/BalanceHistoryRepository;

    .line 22
    .line 23
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    const/16 p1, 0x14

    .line 52
    .line 53
    iput p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->m:I

    .line 54
    .line 55
    const-string p1, "Month"

    .line 56
    .line 57
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->o:Ljava/lang/String;

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->p:Z

    .line 61
    .line 62
    return-void
.end method

.method public static synthetic r(ZLjava/lang/String;Lteam/opay/pay/history/balance/BalanceHistoryViewModel;Lteam/opay/pay/history/balance/BalanceHistoryRequest;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->u(ZLjava/lang/String;Lteam/opay/pay/history/balance/BalanceHistoryViewModel;Lteam/opay/pay/history/balance/BalanceHistoryRequest;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u(ZLjava/lang/String;Lteam/opay/pay/history/balance/BalanceHistoryViewModel;Lteam/opay/pay/history/balance/BalanceHistoryRequest;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 6

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/history/balance/BalanceHistoryViewModel$a;->a:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 p0, 0x2

    .line 22
    if-eq v0, p0, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2, p0, p1}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lteam/opay/pay/history/balance/BalanceHistoryResponse;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Lteam/opay/pay/history/balance/BalanceHistoryResponse;->d()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p3}, Lteam/opay/pay/history/balance/BalanceHistoryRequest;->a()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    cmp-long p3, v2, v4

    .line 61
    .line 62
    if-nez p3, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 v1, 0x0

    .line 66
    :goto_0
    invoke-virtual {p2, v1, v0}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->E(ZLjava/util/List;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    if-eqz p0, :cond_5

    .line 70
    .line 71
    const-string p0, "Month"

    .line 72
    .line 73
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_5

    .line 78
    .line 79
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Lteam/opay/pay/history/balance/BalanceHistoryResponse;

    .line 84
    .line 85
    if-eqz p0, :cond_5

    .line 86
    .line 87
    iget-object p1, p2, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C(ZLjava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/history/balance/BalanceHistoryBean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->s(Ljava/util/ArrayList;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->o:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "Month"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    new-instance v7, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v1, v7

    .line 16
    move-object v2, p1

    .line 17
    move-object v3, p2

    .line 18
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final E(ZLjava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lteam/opay/pay/history/balance/BalanceHistoryItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iput-boolean v2, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->p:Z

    .line 9
    .line 10
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz p2, :cond_5

    .line 17
    .line 18
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    const/4 v6, 0x0

    .line 23
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-eqz v7, :cond_5

    .line 28
    .line 29
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    add-int/lit8 v8, v6, 0x1

    .line 34
    .line 35
    if-gez v6, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 38
    .line 39
    .line 40
    :cond_1
    check-cast v7, Lteam/opay/pay/history/balance/BalanceHistoryItem;

    .line 41
    .line 42
    sget-object v9, Lyke;->a:Lyke;

    .line 43
    .line 44
    invoke-virtual {v7}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getDate()J

    .line 45
    .line 46
    .line 47
    move-result-wide v10

    .line 48
    const/16 v12, 0x3e8

    .line 49
    .line 50
    int-to-long v12, v12

    .line 51
    mul-long v10, v10, v12

    .line 52
    .line 53
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    iget-wide v14, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->n:J

    .line 58
    .line 59
    mul-long v14, v14, v12

    .line 60
    .line 61
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    invoke-virtual {v9, v10, v11}, Lyke;->c(Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-nez v9, :cond_3

    .line 70
    .line 71
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-nez v9, :cond_2

    .line 76
    .line 77
    new-instance v9, Lteam/opay/pay/history/balance/BalanceHistoryBean;

    .line 78
    .line 79
    const/4 v14, 0x6

    .line 80
    const/4 v15, 0x0

    .line 81
    const/4 v11, 0x4

    .line 82
    const/4 v12, 0x0

    .line 83
    const/4 v13, 0x0

    .line 84
    move-object v10, v9

    .line 85
    invoke-direct/range {v10 .. v15}, Lteam/opay/pay/history/balance/BalanceHistoryBean;-><init>(ILteam/opay/pay/history/balance/BalanceHistoryItem;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_2
    new-instance v9, Lteam/opay/pay/history/balance/BalanceHistoryBean;

    .line 92
    .line 93
    invoke-virtual {v7}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getDate()J

    .line 94
    .line 95
    .line 96
    move-result-wide v10

    .line 97
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v19

    .line 101
    const/16 v20, 0x2

    .line 102
    .line 103
    const/16 v21, 0x0

    .line 104
    .line 105
    const/16 v17, 0x1

    .line 106
    .line 107
    const/16 v18, 0x0

    .line 108
    .line 109
    move-object/from16 v16, v9

    .line 110
    .line 111
    invoke-direct/range {v16 .. v21}, Lteam/opay/pay/history/balance/BalanceHistoryBean;-><init>(ILteam/opay/pay/history/balance/BalanceHistoryItem;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_3
    new-instance v15, Lteam/opay/pay/history/balance/BalanceHistoryBean;

    .line 118
    .line 119
    const/4 v13, 0x4

    .line 120
    const/4 v14, 0x0

    .line 121
    const/4 v10, 0x2

    .line 122
    const/4 v12, 0x0

    .line 123
    move-object v9, v15

    .line 124
    move-object v11, v7

    .line 125
    invoke-direct/range {v9 .. v14}, Lteam/opay/pay/history/balance/BalanceHistoryBean;-><init>(ILteam/opay/pay/history/balance/BalanceHistoryItem;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getDate()J

    .line 132
    .line 133
    .line 134
    move-result-wide v9

    .line 135
    iput-wide v9, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->n:J

    .line 136
    .line 137
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    sub-int/2addr v9, v2

    .line 142
    if-ne v6, v9, :cond_4

    .line 143
    .line 144
    invoke-virtual {v7}, Lteam/opay/pay/history/balance/BalanceHistoryItem;->getAccountOrderId()J

    .line 145
    .line 146
    .line 147
    move-result-wide v6

    .line 148
    iput-wide v6, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->l:J

    .line 149
    .line 150
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    iget-wide v9, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->l:J

    .line 155
    .line 156
    iget-wide v11, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->n:J

    .line 157
    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v13, "size:"

    .line 164
    .line 165
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v6, " lastId:"

    .line 172
    .line 173
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v6, " lastMonth:"

    .line 180
    .line 181
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    :cond_4
    move v6, v8

    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_5
    invoke-virtual {v0, v3}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->s(Ljava/util/ArrayList;)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    iget v5, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->m:I

    .line 195
    .line 196
    if-ge v2, v5, :cond_6

    .line 197
    .line 198
    iget-object v2, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->o:Ljava/lang/String;

    .line 199
    .line 200
    const-string v5, "Month"

    .line 201
    .line 202
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_6

    .line 207
    .line 208
    invoke-virtual {v0, v1, v3}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->C(ZLjava/util/ArrayList;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-nez v2, :cond_6

    .line 213
    .line 214
    iget-boolean v2, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->p:Z

    .line 215
    .line 216
    if-eqz v2, :cond_6

    .line 217
    .line 218
    new-instance v2, Lteam/opay/pay/history/balance/BalanceHistoryBean;

    .line 219
    .line 220
    const/4 v9, 0x6

    .line 221
    const/4 v10, 0x0

    .line 222
    const/4 v6, 0x3

    .line 223
    const/4 v7, 0x0

    .line 224
    const/4 v8, 0x0

    .line 225
    move-object v5, v2

    .line 226
    invoke-direct/range {v5 .. v10}, Lteam/opay/pay/history/balance/BalanceHistoryBean;-><init>(ILteam/opay/pay/history/balance/BalanceHistoryItem;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    iput-boolean v4, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->p:Z

    .line 233
    .line 234
    :cond_6
    iget-object v2, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 235
    .line 236
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-static {v1, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 248
    .line 249
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public final F(Lteam/opay/core/android/money/MoneyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->h:Lteam/opay/core/android/money/MoneyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public final G(Lteam/opay/core/android/money/MoneyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->i:Lteam/opay/core/android/money/MoneyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public final H(Lteam/opay/core/android/money/MoneyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->j:Lteam/opay/core/android/money/MoneyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->b:Lteam/opay/core/api/e;

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
            "Lteam/opay/pay/history/balance/BalanceHistoryBean;",
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
    check-cast v2, Lteam/opay/pay/history/balance/BalanceHistoryBean;

    .line 26
    .line 27
    invoke-virtual {v2}, Lteam/opay/pay/history/balance/BalanceHistoryBean;->b()I

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

.method public final t(Lag8;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 15
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
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move/from16 v2, p3

    .line 5
    .line 6
    move-object/from16 v13, p4

    .line 7
    .line 8
    const-string v3, "viewLifecycleOwner"

    .line 9
    .line 10
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v3, "serviceType"

    .line 14
    .line 15
    move-object/from16 v8, p2

    .line 16
    .line 17
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "threeMonth"

    .line 21
    .line 22
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iput-object v13, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->o:Ljava/lang/String;

    .line 28
    .line 29
    const-string v3, "Month"

    .line 30
    .line 31
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    iput-wide v3, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->l:J

    .line 40
    .line 41
    iput-wide v3, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->n:J

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    iput-boolean v3, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->p:Z

    .line 45
    .line 46
    :cond_0
    new-instance v14, Lteam/opay/pay/history/balance/BalanceHistoryRequest;

    .line 47
    .line 48
    iget-wide v5, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->l:J

    .line 49
    .line 50
    if-eqz p5, :cond_1

    .line 51
    .line 52
    const-string v3, "RISKACCOUNT"

    .line 53
    .line 54
    :goto_0
    move-object v10, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-string v3, "CASHACCOUNT"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    const/4 v11, 0x5

    .line 60
    const/4 v12, 0x0

    .line 61
    const/4 v4, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    move-object v3, v14

    .line 64
    move-object/from16 v8, p2

    .line 65
    .line 66
    move-object/from16 v9, p4

    .line 67
    .line 68
    invoke-direct/range {v3 .. v12}, Lteam/opay/pay/history/balance/BalanceHistoryRequest;-><init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    iget-object v3, v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->c:Lteam/opay/pay/history/balance/BalanceHistoryRepository;

    .line 72
    .line 73
    invoke-virtual {v3, v14}, Lteam/opay/pay/history/balance/BalanceHistoryRepository;->e(Lteam/opay/pay/history/balance/BalanceHistoryRequest;)Landroidx/lifecycle/LiveData;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v4, Lzg0;

    .line 78
    .line 79
    invoke-direct {v4, v2, v13, p0, v14}, Lzg0;-><init>(ZLjava/lang/String;Lteam/opay/pay/history/balance/BalanceHistoryViewModel;Lteam/opay/pay/history/balance/BalanceHistoryRequest;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v1, v4}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final v()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/history/balance/BalanceHistoryBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Lteam/opay/core/android/money/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->h:Lteam/opay/core/android/money/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Lteam/opay/core/android/money/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->i:Lteam/opay/core/android/money/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public final z()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/history/balance/BalanceHistoryResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method
