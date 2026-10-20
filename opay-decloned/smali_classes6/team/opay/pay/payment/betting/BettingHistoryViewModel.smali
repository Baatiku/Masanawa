.class public final Lteam/opay/pay/payment/betting/BettingHistoryViewModel;
.super Lteam/opay/pay/payment/ServiceViewModel;
.source "BettingHistoryViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/betting/BettingHistoryViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001d\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0018\u001a\u0004\u0008\u001d\u0010\u001aR%\u0010#\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f0\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0018\u001a\u0004\u0008\"\u0010\u001aR\u0014\u0010\'\u001a\u00020$8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0014\u0010+\u001a\u00020(8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u0016\u0010.\u001a\u0004\u0018\u00010,8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/BettingHistoryViewModel;",
        "Lteam/opay/pay/payment/ServiceViewModel;",
        "Lteam/opay/core/api/e;",
        "sessionProvider",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Lteam/opay/core/api/e;Landroid/app/Application;)V",
        "",
        "serviceId",
        "Lag8;",
        "lifecycleOwner",
        "",
        "D",
        "(Ljava/lang/String;Lag8;)V",
        "Lxt;",
        "j",
        "Lid8;",
        "C",
        "()Lxt;",
        "api",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "k",
        "Landroidx/lifecycle/MutableLiveData;",
        "H",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingEvent",
        "l",
        "G",
        "errorEvent",
        "",
        "Lteam/opay/core/api/BettingHistoryItemBean;",
        "m",
        "F",
        "bettingHistorySuccessEvent",
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
.field public final synthetic i:Lteam/opay/core/api/e;

.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/core/api/BettingHistoryItemBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "application"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2, p1}, Lteam/opay/pay/payment/ServiceViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->i:Lteam/opay/core/api/e;

    .line 15
    .line 16
    new-instance p1, Lf01;

    .line 17
    .line 18
    invoke-direct {p1, p2}, Lf01;-><init>(Landroid/app/Application;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->j:Lid8;

    .line 26
    .line 27
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    return-void
.end method

.method public static synthetic A(Landroid/app/Application;)Lxt;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->B(Landroid/app/Application;)Lxt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final B(Landroid/app/Application;)Lxt;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private final C()Lxt;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->j:Lid8;

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

.method public static final E(Lteam/opay/pay/payment/betting/BettingHistoryViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lteam/opay/pay/payment/betting/BettingHistoryViewModel$a;->a:[I

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    aget v0, v1, v0

    .line 31
    .line 32
    if-eq v0, v2, :cond_3

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object p0, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const-string p1, ""

    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object p0, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method public static synthetic z(Lteam/opay/pay/payment/betting/BettingHistoryViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->E(Lteam/opay/pay/payment/betting/BettingHistoryViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final D(Ljava/lang/String;Lag8;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "serviceId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->C()Lxt;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lteam/opay/core/api/BettingHistoryRequest;

    .line 25
    .line 26
    invoke-direct {v2, p1}, Lteam/opay/core/api/BettingHistoryRequest;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Lxt;->c0(Lteam/opay/core/api/BettingHistoryRequest;)Lretrofit2/Call;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Lg01;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lg01;-><init>(Lteam/opay/pay/payment/betting/BettingHistoryViewModel;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lteam/opay/pay/payment/betting/BettingHistoryViewModel$b;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Lteam/opay/pay/payment/betting/BettingHistoryViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final F()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/core/api/BettingHistoryItemBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->i:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->i:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingHistoryViewModel;->i:Lteam/opay/core/api/e;

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
