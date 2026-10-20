.class public final Lcom/opay/team/newhome/reward/RewardsRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "RewardsRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/reward/RewardsRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0001\u001fB\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000b0\n2\u0006\u0010\t\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000b0\n2\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/RewardsRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V",
        "Lcom/opay/team/newhome/reward/RewardsTaskReq;",
        "req",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lcom/opay/team/newhome/reward/RewardsTaskRsp;",
        "f",
        "(Lcom/opay/team/newhome/reward/RewardsTaskReq;)Landroidx/lifecycle/LiveData;",
        "Lcom/opay/team/newhome/reward/ReceiveReq;",
        "Lcom/opay/team/newhome/reward/ReceiveRsp;",
        "h",
        "(Lcom/opay/team/newhome/reward/ReceiveReq;)Landroidx/lifecycle/LiveData;",
        "",
        "taskId",
        "Lcom/opay/team/newhome/reward/TaskItem;",
        "g",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "d",
        "Landroid/app/Application;",
        "e",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "Lusc;",
        "Lusc;",
        "api",
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
.field public static final g:Lcom/opay/team/newhome/reward/RewardsRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:J


# instance fields
.field public final d:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lusc;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/opay/team/newhome/reward/RewardsRepository$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/reward/RewardsRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/reward/RewardsRepository;->g:Lcom/opay/team/newhome/reward/RewardsRepository$Companion;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/opay/team/newhome/reward/RewardsRepository;->h:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsRepository;->d:Landroid/app/Application;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 17
    .line 18
    sget-object p2, Lcom/opay/team/home/api/HomeApiService;->a:Lcom/opay/team/home/api/HomeApiService;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lcom/opay/team/home/api/HomeApiService;->g(Landroid/content/Context;)Lusc;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsRepository;->f:Lusc;

    .line 25
    .line 26
    return-void
.end method

.method public static final synthetic e(Lcom/opay/team/newhome/reward/RewardsRepository;)Lusc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsRepository;->f:Lusc;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final f(Lcom/opay/team/newhome/reward/RewardsTaskReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lcom/opay/team/newhome/reward/RewardsTaskReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/reward/RewardsTaskReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/reward/RewardsTaskRsp;",
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsRepository$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lcom/opay/team/newhome/reward/RewardsRepository$a;-><init>(Lcom/opay/team/newhome/reward/RewardsRepository;Lcom/opay/team/newhome/reward/RewardsTaskReq;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final g(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
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
            "Lcom/opay/team/newhome/reward/TaskItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "taskId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lcom/opay/team/newhome/reward/RewardsRepository$b;-><init>(Lcom/opay/team/newhome/reward/RewardsRepository;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final h(Lcom/opay/team/newhome/reward/ReceiveReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lcom/opay/team/newhome/reward/ReceiveReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/reward/ReceiveReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/reward/ReceiveRsp;",
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lcom/opay/team/newhome/reward/RewardsRepository$c;-><init>(Lcom/opay/team/newhome/reward/RewardsRepository;Lcom/opay/team/newhome/reward/ReceiveReq;Lteam/opay/core/android/arch/AppExecutors;)V

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
