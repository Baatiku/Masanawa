.class public final Lteam/opay/pay/cashier/result/ShareViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "ShareViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/result/ShareViewModel$Companion;,
        Lteam/opay/pay/cashier/result/ShareViewModel$ViewModelFactory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 &2\u00020\u0001:\u0002\'(B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ)\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J3\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00132\u0014\u0010\u000f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR6\u0010%\u001a\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u001dj\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/ShareViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/transfer/contact/TransferContactRepository;",
        "contactRepository",
        "Lteam/opay/pay/cashier/result/ShareShortUrlRepository;",
        "shareShortUrlRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/cashier/result/ShareShortUrlRepository;)V",
        "Lag8;",
        "owner",
        "Lkotlin/Function1;",
        "",
        "",
        "callBack",
        "w",
        "(Lag8;Lkotlin/jvm/functions/Function1;)V",
        "lifecycleOwner",
        "Lteam/opay/pay/api/LUrlData;",
        "input",
        "u",
        "(Lag8;Lteam/opay/pay/api/LUrlData;Lkotlin/jvm/functions/Function1;)V",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/pay/transfer/contact/TransferContactRepository;",
        "d",
        "Lteam/opay/pay/cashier/result/ShareShortUrlRepository;",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "e",
        "Ljava/util/ArrayList;",
        "t",
        "()Ljava/util/ArrayList;",
        "x",
        "(Ljava/util/ArrayList;)V",
        "opayUserList",
        "f",
        "ViewModelFactory",
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
.field public static final f:Lteam/opay/pay/cashier/result/ShareViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/transfer/contact/TransferContactRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/pay/cashier/result/ShareShortUrlRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/result/ShareViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/result/ShareViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/result/ShareViewModel;->f:Lteam/opay/pay/cashier/result/ShareViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/cashier/result/ShareShortUrlRepository;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/TransferContactRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/cashier/result/ShareShortUrlRepository;
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
    const-string v0, "contactRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "shareShortUrlRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/cashier/result/ShareViewModel;->b:Landroid/app/Application;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/cashier/result/ShareViewModel;->c:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/pay/cashier/result/ShareViewModel;->d:Lteam/opay/pay/cashier/result/ShareShortUrlRepository;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic r(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/api/LUrlData;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashier/result/ShareViewModel;->v(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/api/LUrlData;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s(Lteam/opay/pay/cashier/result/ShareViewModel;)Lteam/opay/pay/transfer/contact/TransferContactRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/cashier/result/ShareViewModel;->c:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final v(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/api/LUrlData;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 19
    .line 20
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_2
    sget-object v1, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 25
    .line 26
    if-ne v0, v1, :cond_4

    .line 27
    .line 28
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/CharSequence;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lteam/opay/pay/api/LUrlData;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p0
.end method


# virtual methods
.method public final t()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareViewModel;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u(Lag8;Lteam/opay/pay/api/LUrlData;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/api/LUrlData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Lteam/opay/pay/api/LUrlData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "input"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callBack"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareViewModel;->d:Lteam/opay/pay/cashier/result/ShareShortUrlRepository;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lteam/opay/pay/cashier/result/ShareShortUrlRepository;->f(Lteam/opay/pay/api/LUrlData;)Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lond;

    .line 23
    .line 24
    invoke-direct {v1, p3, p2}, Lond;-><init>(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/api/LUrlData;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final w(Lag8;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callBack"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v4, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, p0, p1, p2, v0}, Lteam/opay/pay/cashier/result/ShareViewModel$queryLocalMobiles$1;-><init>(Lteam/opay/pay/cashier/result/ShareViewModel;Lag8;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final x(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/result/ShareViewModel;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method
