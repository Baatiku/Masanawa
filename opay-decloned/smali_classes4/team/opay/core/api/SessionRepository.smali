.class public final Lteam/opay/core/api/SessionRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "SessionRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/api/SessionRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 )2\u00020\u0001:\u0001+B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J#\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00150\u00142\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u001a\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\n0#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u001d\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/core/api/SessionRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lwhd;",
        "sessionWebService",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lwhd;)V",
        "Lteam/opay/core/api/Session;",
        "session",
        "",
        "n",
        "(Lteam/opay/core/api/Session;)V",
        "m",
        "()V",
        "d",
        "",
        "force",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "k",
        "(Z)Landroidx/lifecycle/LiveData;",
        "Landroid/app/Application;",
        "e",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "f",
        "Lwhd;",
        "Lteam/opay/core/settings/SettingsStorage;",
        "g",
        "Lid8;",
        "getSettingsStorage",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "Landroidx/lifecycle/MutableLiveData;",
        "h",
        "Landroidx/lifecycle/MutableLiveData;",
        "_session",
        "i",
        "Landroidx/lifecycle/LiveData;",
        "j",
        "()Landroidx/lifecycle/LiveData;",
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
.field public static final j:Lteam/opay/core/api/SessionRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Lteam/opay/core/api/Session;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lwhd;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/Session;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/api/Session;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lteam/opay/core/api/SessionRepository$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/api/SessionRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/api/SessionRepository;->j:Lteam/opay/core/api/SessionRepository$Companion;

    .line 8
    .line 9
    new-instance v0, Lteam/opay/core/api/Session;

    .line 10
    .line 11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v2, v0

    .line 23
    invoke-direct/range {v2 .. v7}, Lteam/opay/core/api/Session;-><init>(Lteam/opay/core/api/GraphQL$User;Lteam/opay/core/api/GraphQL$Country;Ljava/util/List;Lteam/opay/core/api/GraphQL$Currency;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lteam/opay/core/api/SessionRepository;->k:Lteam/opay/core/api/Session;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lwhd;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lwhd;
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
    const-string v0, "sessionWebService"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lteam/opay/core/android/arch/BaseRepository;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/core/api/SessionRepository;->d:Landroid/app/Application;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/core/api/SessionRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/core/api/SessionRepository;->f:Lwhd;

    .line 24
    .line 25
    new-instance p1, Luhd;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Luhd;-><init>(Lteam/opay/core/api/SessionRepository;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lteam/opay/core/api/SessionRepository;->g:Lid8;

    .line 35
    .line 36
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lteam/opay/core/api/SessionRepository;->h:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    iput-object p1, p0, Lteam/opay/core/api/SessionRepository;->i:Landroidx/lifecycle/LiveData;

    .line 44
    .line 45
    sget-object p1, Lteam/opay/core/api/SessionRepository;->k:Lteam/opay/core/api/Session;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lteam/opay/core/api/SessionRepository;->n(Lteam/opay/core/api/Session;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static synthetic e(Lteam/opay/core/api/SessionRepository;Lteam/opay/core/api/Session;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/api/SessionRepository;->o(Lteam/opay/core/api/SessionRepository;Lteam/opay/core/api/Session;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lteam/opay/core/api/SessionRepository;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/api/SessionRepository;->p(Lteam/opay/core/api/SessionRepository;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g()Lteam/opay/core/api/Session;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/SessionRepository;->k:Lteam/opay/core/api/Session;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h(Lteam/opay/core/api/SessionRepository;)Lwhd;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/api/SessionRepository;->f:Lwhd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lteam/opay/core/api/SessionRepository;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/api/SessionRepository;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/core/api/SessionRepository;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/core/api/SessionRepository;->k(Z)Landroidx/lifecycle/LiveData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final o(Lteam/opay/core/api/SessionRepository;Lteam/opay/core/api/Session;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/api/SessionRepository;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final p(Lteam/opay/core/api/SessionRepository;)Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/core/api/SessionRepository;->d:Landroid/app/Application;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/SessionRepository;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/api/SessionRepository;->k:Lteam/opay/core/api/Session;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/api/Session;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/SessionRepository;->i:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Z)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/Session;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/SessionRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/core/api/SessionRepository$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/core/api/SessionRepository$a;-><init>(Lteam/opay/core/api/SessionRepository;ZLteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundResource;->k()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final m()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/arch/BaseRepository;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final n(Lteam/opay/core/api/Session;)V
    .locals 2
    .param p1    # Lteam/opay/core/api/Session;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lteam/opay/core/api/SessionRepository;->k:Lteam/opay/core/api/Session;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lteam/opay/core/api/SessionRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lvhd;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Lvhd;-><init>(Lteam/opay/core/api/SessionRepository;Lteam/opay/core/api/Session;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
