.class public final Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;
.super Ljava/lang/Object;
.source "ContactsQueryConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transfer/ContactsQueryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J+\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ.\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0010\u001a\u00020\tH\u0086@\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J$\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u000b2\u0006\u0010\u0008\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J)\u0010\u0019\u001a\u00020\u0018*\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "c",
        "()Ljava/lang/Integer;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "viewmodel",
        "",
        "fromCache",
        "Lv56;",
        "",
        "",
        "g",
        "(Landroidx/lifecycle/AndroidViewModel;Z)Lv56;",
        "needSub",
        "",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "d",
        "(Landroidx/lifecycle/AndroidViewModel;ZLjr2;)Ljava/lang/Object;",
        "f",
        "(Landroidx/lifecycle/AndroidViewModel;Ljr2;)Ljava/lang/Object;",
        "list",
        "",
        "b",
        "(Ljava/util/List;Ljava/util/List;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;->b(Ljava/util/List;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;Landroidx/lifecycle/AndroidViewModel;ZLjr2;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;->d(Landroidx/lifecycle/AndroidViewModel;ZLjr2;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic h(Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;Landroidx/lifecycle/AndroidViewModel;ZILjava/lang/Object;)Lv56;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;->g(Landroidx/lifecycle/AndroidViewModel;Z)Lv56;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public final c()Ljava/lang/Integer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-class v1, Lteam/opay/pay/transfer/ContactsQueryConfig;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->getABSwitcher(Ljava/lang/Class;)Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lteam/opay/pay/transfer/ContactsQueryConfig;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/transfer/ContactsQueryConfig;->getCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0
.end method

.method public final d(Landroidx/lifecycle/AndroidViewModel;ZLjr2;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroidx/lifecycle/AndroidViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/AndroidViewModel;",
            "Z",
            "Ljr2<",
            "-",
            "Lv56<",
            "+",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of p2, p3, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move-object p2, p3

    .line 6
    check-cast p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;

    .line 7
    .line 8
    iget v0, p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;->label:I

    .line 9
    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    and-int v2, v0, v1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    iput v0, p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;

    .line 21
    .line 22
    invoke-direct {p2, p0, p3}, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;-><init>(Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v1, p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;->label:I

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    if-ne v1, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroidx/lifecycle/AndroidViewModel;

    .line 42
    .line 43
    iget-object p2, p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;

    .line 46
    .line 47
    invoke-static {p3}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p3}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    new-instance v1, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$localMobiles$1;

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$localMobiles$1;-><init>(Ljr2;)V

    .line 69
    .line 70
    .line 71
    iput-object p0, p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    iput-object p1, p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;->L$1:Ljava/lang/Object;

    .line 74
    .line 75
    iput v3, p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$1;->label:I

    .line 76
    .line 77
    invoke-static {p3, v1, p2}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    if-ne p3, v0, :cond_3

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_3
    move-object p2, p0

    .line 85
    :goto_1
    invoke-static {p3}, Ly86;->I(Ljava/lang/Object;)Lv56;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {p2, p1, v3}, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;->g(Landroidx/lifecycle/AndroidViewModel;Z)Lv56;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$2;

    .line 94
    .line 95
    invoke-direct {p2, v2}, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getLocalMobiles$2;-><init>(Ljr2;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1, p3, p2}, Ly86;->H(Lv56;Lv56;Lhm6;)Lv56;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p1, p2}, Ly86;->K(Lv56;Lkotlin/coroutines/CoroutineContext;)Lv56;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    return-object p1
.end method

.method public final f(Landroidx/lifecycle/AndroidViewModel;Ljr2;)Ljava/lang/Object;
    .locals 6
    .param p1    # Landroidx/lifecycle/AndroidViewModel;
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
            "Landroidx/lifecycle/AndroidViewModel;",
            "Ljr2<",
            "-",
            "Lv56<",
            "+",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v4, 0x2

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v3, p2

    .line 7
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;->e(Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;Landroidx/lifecycle/AndroidViewModel;ZLjr2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final g(Landroidx/lifecycle/AndroidViewModel;Z)Lv56;
    .locals 3
    .param p1    # Landroidx/lifecycle/AndroidViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/AndroidViewModel;",
            "Z)",
            "Lv56<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "viewmodel"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 17
    .line 18
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "null cannot be cast to non-null type android.app.Application"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast v1, Landroid/app/Application;

    .line 28
    .line 29
    const-class v2, Lfv;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lfv;

    .line 36
    .line 37
    invoke-interface {v0}, Lfv;->d()Lretrofit2/Call;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-class v0, Lteam/opay/pay/api/OperatorSection;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->c(Ljava/lang/Class;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/16 v0, 0x1e

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->g(I)Lteam/opay/core/android/arch/RequestBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->d()Lteam/opay/core/android/arch/RequestBuilder;

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Landroidx/lifecycle/FlowLiveDataConversions;->a(Landroidx/lifecycle/LiveData;)Lv56;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance p2, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getSuportNumbers$$inlined$map$1;

    .line 71
    .line 72
    invoke-direct {p2, p1}, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion$getSuportNumbers$$inlined$map$1;-><init>(Lv56;)V

    .line 73
    .line 74
    .line 75
    return-object p2
.end method
