.class public final Lteam/opay/opb/transfer/bank/BankRepository;
.super Ljava/lang/Object;
.source "BankViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/transfer/bank/BankRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00102\u00020\u0001:\u0001)B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0080@\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u00132\u0006\u0010\r\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J-\u0010\u001b\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00190\u0018j\u0002`\u001a0\u00140\u00132\u0006\u0010\r\u001a\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u0017J-\u0010\u001c\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00190\u0018j\u0002`\u001a0\u00140\u00132\u0006\u0010\r\u001a\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/opb/transfer/bank/BankRepository;",
        "",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "appExecutors",
        "Ldv;",
        "apiService",
        "Lteam/opay/opb/transfer/bank/room/BanksDao;",
        "banksDao",
        "Lteam/opay/opb/transfer/bank/room/ServicesDao;",
        "serviceDao",
        "<init>",
        "(Lteam/opay/core/http/arch/AppExecutors;Ldv;Lteam/opay/opb/transfer/bank/room/BanksDao;Lteam/opay/opb/transfer/bank/room/ServicesDao;)V",
        "Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;",
        "request",
        "Lteam/opay/core/http/HttpResult;",
        "Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;",
        "f",
        "(Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/opb/transfer/bank/bank/BankRequest;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "Lteam/opay/opb/transfer/bank/bank/MatchedBanksResp;",
        "i",
        "(Lteam/opay/opb/transfer/bank/bank/BankRequest;)Landroidx/lifecycle/LiveData;",
        "",
        "Lteam/opay/business/core/bank/BankInfo;",
        "Lteam/opay/opb/transfer/bank/bank/BankList;",
        "g",
        "h",
        "a",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "b",
        "Ldv;",
        "c",
        "Lteam/opay/opb/transfer/bank/room/BanksDao;",
        "d",
        "Lteam/opay/opb/transfer/bank/room/ServicesDao;",
        "",
        "e",
        "J",
        "bankRefreshTime",
        "Companion",
        "business-transfer-bank_release"
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
.field public static final f:Lteam/opay/opb/transfer/bank/BankRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:J


# instance fields
.field public final a:Lteam/opay/core/http/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ldv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/opb/transfer/bank/room/BanksDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/opb/transfer/bank/room/ServicesDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/opb/transfer/bank/BankRepository$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/opb/transfer/bank/BankRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/opb/transfer/bank/BankRepository;->f:Lteam/opay/opb/transfer/bank/BankRepository$Companion;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0x18

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lteam/opay/opb/transfer/bank/BankRepository;->g:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lteam/opay/core/http/arch/AppExecutors;Ldv;Lteam/opay/opb/transfer/bank/room/BanksDao;Lteam/opay/opb/transfer/bank/room/ServicesDao;)V
    .locals 1
    .param p1    # Lteam/opay/core/http/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ldv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/opb/transfer/bank/room/BanksDao;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/opb/transfer/bank/room/ServicesDao;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appExecutors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "apiService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "banksDao"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "serviceDao"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/BankRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/opb/transfer/bank/BankRepository;->b:Ldv;

    .line 27
    .line 28
    iput-object p3, p0, Lteam/opay/opb/transfer/bank/BankRepository;->c:Lteam/opay/opb/transfer/bank/room/BanksDao;

    .line 29
    .line 30
    iput-object p4, p0, Lteam/opay/opb/transfer/bank/BankRepository;->d:Lteam/opay/opb/transfer/bank/room/ServicesDao;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic a(Lteam/opay/opb/transfer/bank/BankRepository;)Ldv;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/transfer/bank/BankRepository;->b:Ldv;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lteam/opay/opb/transfer/bank/BankRepository;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/opb/transfer/bank/BankRepository;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic c(Lteam/opay/opb/transfer/bank/BankRepository;)Lteam/opay/opb/transfer/bank/room/BanksDao;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/transfer/bank/BankRepository;->c:Lteam/opay/opb/transfer/bank/room/BanksDao;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d()J
    .locals 2

    .line 1
    sget-wide v0, Lteam/opay/opb/transfer/bank/BankRepository;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic e(Lteam/opay/opb/transfer/bank/BankRepository;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/opb/transfer/bank/BankRepository;->e:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final f(Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/BankRepository;->b:Ldv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ldv;->f(Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final g(Lteam/opay/opb/transfer/bank/bank/BankRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/opb/transfer/bank/bank/BankRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/transfer/bank/bank/BankRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/business/core/bank/BankInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/BankRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/opb/transfer/bank/BankRepository$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/opb/transfer/bank/BankRepository$a;-><init>(Lteam/opay/opb/transfer/bank/BankRepository;Lteam/opay/opb/transfer/bank/bank/BankRequest;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundResource;->j()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final h(Lteam/opay/opb/transfer/bank/bank/BankRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/opb/transfer/bank/bank/BankRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/transfer/bank/bank/BankRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/business/core/bank/BankInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/BankRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/opb/transfer/bank/BankRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/opb/transfer/bank/BankRepository$b;-><init>(Lteam/opay/opb/transfer/bank/BankRepository;Lteam/opay/opb/transfer/bank/bank/BankRequest;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Lteam/opay/opb/transfer/bank/bank/BankRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/opb/transfer/bank/bank/BankRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/transfer/bank/bank/BankRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/opb/transfer/bank/bank/MatchedBanksResp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/BankRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/opb/transfer/bank/BankRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/opb/transfer/bank/BankRepository$c;-><init>(Lteam/opay/opb/transfer/bank/BankRepository;Lteam/opay/opb/transfer/bank/bank/BankRequest;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
