.class public final Lteam/opay/pay/settings/sms/SmsSubscribeRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "SmsSubscribeRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u0015\u001a\u00020\u00142\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J!\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\r0\u000c2\u0006\u0010\u000b\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\r0\u000c\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/pay/settings/sms/SmsSubscribeRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lteam/opay/pay/settings/sms/a;",
        "smsDao",
        "Lfv;",
        "apiService",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/settings/sms/a;Lfv;)V",
        "Lteam/opay/pay/api/SmsNodeListReq;",
        "body",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/api/SmsNodeListResponse;",
        "h",
        "(Lteam/opay/pay/api/SmsNodeListReq;)Landroidx/lifecycle/LiveData;",
        "",
        "Lteam/opay/pay/api/ItemSmsNodeList;",
        "list",
        "",
        "k",
        "(Ljava/util/List;)V",
        "Lteam/opay/pay/api/SmsSubscribeBody;",
        "Lteam/opay/pay/api/SmsSubscribeResult;",
        "j",
        "(Lteam/opay/pay/api/SmsSubscribeBody;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/api/SmsSubscribeHomeRes;",
        "i",
        "()Landroidx/lifecycle/LiveData;",
        "d",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "e",
        "Lteam/opay/pay/settings/sms/a;",
        "f",
        "Lfv;",
        "g",
        "()Lfv;",
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

.field public final e:Lteam/opay/pay/settings/sms/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Lfv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/settings/sms/a;Lfv;)V
    .locals 1
    .param p1    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/settings/sms/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lfv;
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
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/core/android/arch/BaseRepository;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->e:Lteam/opay/pay/settings/sms/a;

    .line 17
    .line 18
    iput-object p3, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->f:Lfv;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic e(Lteam/opay/pay/settings/sms/SmsSubscribeRepository;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->l(Lteam/opay/pay/settings/sms/SmsSubscribeRepository;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/pay/settings/sms/SmsSubscribeRepository;)Lteam/opay/pay/settings/sms/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->e:Lteam/opay/pay/settings/sms/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final l(Lteam/opay/pay/settings/sms/SmsSubscribeRepository;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->e:Lteam/opay/pay/settings/sms/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Lteam/opay/pay/settings/sms/a;->a(Ljava/lang/String;)Lteam/opay/pay/api/SmsNodeListResponse;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lteam/opay/pay/api/SmsNodeListResponse;->i(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->e:Lteam/opay/pay/settings/sms/a;

    .line 25
    .line 26
    invoke-interface {p0, v0}, Lteam/opay/pay/settings/sms/a;->d(Lteam/opay/pay/api/SmsNodeListResponse;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final g()Lfv;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->f:Lfv;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Lteam/opay/pay/api/SmsNodeListReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/api/SmsNodeListReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/api/SmsNodeListReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/api/SmsNodeListResponse;",
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
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;-><init>(Lteam/opay/pay/settings/sms/SmsSubscribeRepository;Lteam/opay/pay/api/SmsNodeListReq;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final i()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/api/SmsSubscribeHomeRes;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$b;-><init>(Lteam/opay/pay/settings/sms/SmsSubscribeRepository;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final j(Lteam/opay/pay/api/SmsSubscribeBody;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/api/SmsSubscribeBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/api/SmsSubscribeBody;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/api/SmsSubscribeResult;",
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
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$c;-><init>(Lteam/opay/pay/settings/sms/SmsSubscribeRepository;Lteam/opay/pay/api/SmsSubscribeBody;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final k(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/api/ItemSmsNodeList;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ly0e;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Ly0e;-><init>(Lteam/opay/pay/settings/sms/SmsSubscribeRepository;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
