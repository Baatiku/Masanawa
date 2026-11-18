.class public final Lteam/opay/pay/kyc/levels/KycLimitViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "KycLimitViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ1\u0010\u0012\u001a\u00020\u00082\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J)\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u001d\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00100$8\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u001f\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010*0$8\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010&\u001a\u0004\u0008,\u0010(R\u001f\u00100\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0$8\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010&\u001a\u0004\u0008/\u0010(R\"\u00107\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106\u00a8\u00068"
    }
    d2 = {
        "Lteam/opay/pay/kyc/levels/KycLimitViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lag8;",
        "lifecycleOwner",
        "",
        "D",
        "(Lag8;)V",
        "",
        "Lteam/opay/pay/kyc/levels/QuotLimit;",
        "quotaLimitList",
        "",
        "kycLevel",
        "",
        "quotaLimitOpen",
        "x",
        "(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V",
        "name",
        "source",
        "paramActivity",
        "t",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "input",
        "w",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "b",
        "Landroid/app/Application;",
        "Lcv7;",
        "c",
        "Lid8;",
        "y",
        "()Lcv7;",
        "api",
        "Landroidx/lifecycle/MutableLiveData;",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "B",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingEvent",
        "Lteam/opay/pay/kyc/levels/KycLevelRsp;",
        "e",
        "A",
        "loadSuccessEvent",
        "f",
        "z",
        "loadFailEvent",
        "g",
        "Z",
        "C",
        "()Z",
        "F",
        "(Z)V",
        "showKyc3SuccessTips",
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
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
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

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/levels/KycLevelRsp;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
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
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->b:Landroid/app/Application;

    .line 10
    .line 11
    new-instance p1, Lo28;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lo28;-><init>(Lteam/opay/pay/kyc/levels/KycLimitViewModel;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->c:Lid8;

    .line 21
    .line 22
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    return-void
.end method

.method public static final E(Lteam/opay/pay/kyc/levels/KycLimitViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->i()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    const-string p1, ""

    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p0
.end method

.method public static synthetic r(Lteam/opay/pay/kyc/levels/KycLimitViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->E(Lteam/opay/pay/kyc/levels/KycLimitViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/kyc/levels/KycLimitViewModel;)Lcv7;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->v(Lteam/opay/pay/kyc/levels/KycLimitViewModel;)Lcv7;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lteam/opay/pay/kyc/levels/KycLimitViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final v(Lteam/opay/pay/kyc/levels/KycLimitViewModel;)Lcv7;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->b:Landroid/app/Application;

    .line 4
    .line 5
    const-class v1, Lcv7;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcv7;

    .line 12
    .line 13
    return-object p0
.end method

.method private final y()Lcv7;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcv7;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/levels/KycLevelRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final D(Lag8;)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0}, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->y()Lcv7;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Lcv7;->H()Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ln28;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Ln28;-><init>(Lteam/opay/pay/kyc/levels/KycLimitViewModel;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lteam/opay/pay/kyc/levels/KycLimitViewModel$a;

    .line 37
    .line 38
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/levels/KycLimitViewModel$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final F(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "name"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v1, "source"

    .line 8
    .line 9
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lteam/opay/pay/kyc/levels/KycLevelRsp;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Lteam/opay/pay/kyc/levels/KycLevelRsp;->a()Lteam/opay/pay/kyc/levels/AccountInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Lteam/opay/pay/kyc/levels/AccountInfo;->d()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v2, v3

    .line 35
    :goto_0
    const-string v4, "agent"

    .line 36
    .line 37
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const-string v4, ""

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lteam/opay/pay/kyc/levels/KycLevelRsp;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2}, Lteam/opay/pay/kyc/levels/KycLevelRsp;->a()Lteam/opay/pay/kyc/levels/AccountInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2}, Lteam/opay/pay/kyc/levels/AccountInfo;->d()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-nez v2, :cond_4

    .line 66
    .line 67
    :cond_1
    move-object v2, v4

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v2, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lteam/opay/pay/kyc/levels/KycLevelRsp;

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-virtual {v2}, Lteam/opay/pay/kyc/levels/KycLevelRsp;->a()Lteam/opay/pay/kyc/levels/AccountInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    invoke-virtual {v2}, Lteam/opay/pay/kyc/levels/AccountInfo;->b()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move-object v2, v3

    .line 91
    :cond_4
    :goto_1
    iget-object v5, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 92
    .line 93
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Lteam/opay/pay/kyc/levels/KycLevelRsp;

    .line 98
    .line 99
    if-eqz v5, :cond_5

    .line 100
    .line 101
    invoke-virtual {v5}, Lteam/opay/pay/kyc/levels/KycLevelRsp;->c()Lteam/opay/pay/kyc/levels/QuotaLimit;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    if-eqz v5, :cond_5

    .line 106
    .line 107
    invoke-virtual {v5}, Lteam/opay/pay/kyc/levels/QuotaLimit;->a()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    if-eqz v5, :cond_5

    .line 112
    .line 113
    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Lteam/opay/pay/kyc/levels/QuotLimit;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    move-object v5, v3

    .line 121
    :goto_2
    iget-object v6, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 122
    .line 123
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Lteam/opay/pay/kyc/levels/KycLevelRsp;

    .line 128
    .line 129
    if-eqz v6, :cond_6

    .line 130
    .line 131
    invoke-virtual {v6}, Lteam/opay/pay/kyc/levels/KycLevelRsp;->c()Lteam/opay/pay/kyc/levels/QuotaLimit;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    if-eqz v6, :cond_6

    .line 136
    .line 137
    invoke-virtual {v6}, Lteam/opay/pay/kyc/levels/QuotaLimit;->b()Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    goto :goto_3

    .line 148
    :cond_6
    const/4 v6, 0x0

    .line 149
    :goto_3
    const/4 v7, -0x1

    .line 150
    if-nez v6, :cond_7

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_7
    if-eqz v5, :cond_8

    .line 154
    .line 155
    invoke-virtual {v5}, Lteam/opay/pay/kyc/levels/QuotLimit;->i()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    :cond_8
    :goto_4
    sget-object v6, Lx7b;->a:Lx7b;

    .line 160
    .line 161
    invoke-static {v1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    const-string v1, "userTier"

    .line 166
    .line 167
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v2, "progress"

    .line 172
    .line 173
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-static {v2, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-eqz v5, :cond_9

    .line 182
    .line 183
    invoke-virtual {v5}, Lteam/opay/pay/kyc/levels/QuotLimit;->d()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    goto :goto_5

    .line 188
    :cond_9
    move-object v5, v3

    .line 189
    :goto_5
    const-string v7, "progressbarword"

    .line 190
    .line 191
    invoke-static {v7, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    iget-object v7, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 196
    .line 197
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    check-cast v7, Lteam/opay/pay/kyc/levels/KycLevelRsp;

    .line 202
    .line 203
    if-eqz v7, :cond_a

    .line 204
    .line 205
    invoke-virtual {v7}, Lteam/opay/pay/kyc/levels/KycLevelRsp;->d()Lteam/opay/pay/kyc/levels/UpgradeButton;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    if-eqz v7, :cond_a

    .line 210
    .line 211
    invoke-virtual {v7}, Lteam/opay/pay/kyc/levels/UpgradeButton;->b()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    :cond_a
    const-string v7, "buttonword"

    .line 216
    .line 217
    invoke-static {v7, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    if-nez p3, :cond_b

    .line 222
    .line 223
    move-object p3, v4

    .line 224
    :cond_b
    const-string v4, "activity"

    .line 225
    .line 226
    invoke-static {v4, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 227
    .line 228
    .line 229
    move-result-object p3

    .line 230
    const/4 v4, 0x6

    .line 231
    new-array v4, v4, [Lkotlin/Pair;

    .line 232
    .line 233
    aput-object p2, v4, v0

    .line 234
    .line 235
    const/4 p2, 0x1

    .line 236
    aput-object v1, v4, p2

    .line 237
    .line 238
    const/4 p2, 0x2

    .line 239
    aput-object v2, v4, p2

    .line 240
    .line 241
    const/4 p2, 0x3

    .line 242
    aput-object v5, v4, p2

    .line 243
    .line 244
    const/4 p2, 0x4

    .line 245
    aput-object v3, v4, p2

    .line 246
    .line 247
    const/4 p2, 0x5

    .line 248
    aput-object p3, v4, p2

    .line 249
    .line 250
    invoke-virtual {v6, p1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 251
    .line 252
    .line 253
    return-void
.end method

.method public final w(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "substring(...)"

    .line 21
    .line 22
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x6

    .line 26
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, " "

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :cond_0
    return-object p1
.end method

.method public final x(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/levels/QuotLimit;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lteam/opay/pay/kyc/levels/QuotLimit;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lteam/opay/pay/kyc/levels/QuotLimit;->k(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_1
    invoke-virtual {v0, v2}, Lteam/opay/pay/kyc/levels/QuotLimit;->m(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/pay/kyc/levels/QuotLimit;->i()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/16 v3, 0x19

    .line 39
    .line 40
    if-ge v2, v3, :cond_2

    .line 41
    .line 42
    sget-object v2, Lhh2;->a:Lhh2;

    .line 43
    .line 44
    sget v3, Lteam/opay/pay/R$color;->omain_color_E2F5EB:I

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Lhh2;->a(I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v0, v3}, Lteam/opay/pay/kyc/levels/QuotLimit;->n(Ljava/lang/Integer;)V

    .line 55
    .line 56
    .line 57
    sget v3, Lteam/opay/pay/R$color;->primary:I

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lhh2;->a(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {v0}, Lteam/opay/pay/kyc/levels/QuotLimit;->i()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/16 v3, 0x32

    .line 73
    .line 74
    if-ge v2, v3, :cond_3

    .line 75
    .line 76
    sget-object v2, Lhh2;->a:Lhh2;

    .line 77
    .line 78
    sget v3, Lteam/opay/pay/R$color;->osdk_FFF5E8:I

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Lhh2;->a(I)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0, v3}, Lteam/opay/pay/kyc/levels/QuotLimit;->n(Ljava/lang/Integer;)V

    .line 89
    .line 90
    .line 91
    sget v3, Lteam/opay/pay/R$color;->omain_color_ff9100:I

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Lhh2;->a(I)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    sget-object v2, Lhh2;->a:Lhh2;

    .line 103
    .line 104
    sget v3, Lteam/opay/pay/R$color;->osdk_color_fce2e8:I

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Lhh2;->a(I)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0, v3}, Lteam/opay/pay/kyc/levels/QuotLimit;->n(Ljava/lang/Integer;)V

    .line 115
    .line 116
    .line 117
    sget v3, Lteam/opay/pay/R$color;->osdk_color_DC0C48:I

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Lhh2;->a(I)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    :goto_2
    invoke-virtual {v0, v2}, Lteam/opay/pay/kyc/levels/QuotLimit;->j(Ljava/lang/Integer;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lteam/opay/pay/kyc/levels/QuotLimit;->b()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-eqz v2, :cond_0

    .line 135
    .line 136
    const/4 v7, 0x6

    .line 137
    const/4 v8, 0x0

    .line 138
    const-string/jumbo v4, "{amountPercent}"

    .line 139
    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    const/4 v6, 0x0

    .line 143
    move-object v3, v2

    .line 144
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    const/4 v4, -0x1

    .line 149
    if-le v3, v4, :cond_6

    .line 150
    .line 151
    const-string/jumbo v3, "{amountPercent}"

    .line 152
    .line 153
    .line 154
    filled-new-array {v3}, [Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    const/4 v7, 0x6

    .line 159
    const/4 v8, 0x0

    .line 160
    const/4 v5, 0x0

    .line 161
    const/4 v6, 0x0

    .line 162
    move-object v3, v2

    .line 163
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    const/4 v4, 0x1

    .line 172
    if-le v3, v4, :cond_0

    .line 173
    .line 174
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 175
    .line 176
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ljava/lang/CharSequence;

    .line 184
    .line 185
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lteam/opay/pay/kyc/levels/QuotLimit;->a()Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    if-eqz v1, :cond_5

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 203
    .line 204
    invoke-direct {v6, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-virtual {v0}, Lteam/opay/pay/kyc/levels/QuotLimit;->i()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    const/16 v8, 0x64

    .line 216
    .line 217
    if-le v7, v8, :cond_4

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_4
    invoke-virtual {v0}, Lteam/opay/pay/kyc/levels/QuotLimit;->i()I

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v9, " "

    .line 230
    .line 231
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v8, "% "

    .line 238
    .line 239
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    const/16 v8, 0x11

    .line 254
    .line 255
    invoke-virtual {v3, v6, v1, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 256
    .line 257
    .line 258
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 259
    .line 260
    const/16 v6, 0x1c

    .line 261
    .line 262
    if-lt v1, v6, :cond_5

    .line 263
    .line 264
    invoke-static {}, Lm28;->a()V

    .line 265
    .line 266
    .line 267
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 268
    .line 269
    invoke-static {v1}, Ll28;->a(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    invoke-virtual {v3, v1, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 278
    .line 279
    .line 280
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    check-cast v1, Ljava/lang/CharSequence;

    .line 285
    .line 286
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 287
    .line 288
    .line 289
    new-instance v1, Landroid/text/SpannedString;

    .line 290
    .line 291
    invoke-direct {v1, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/levels/QuotLimit;->l(Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_6
    invoke-virtual {v0}, Lteam/opay/pay/kyc/levels/QuotLimit;->b()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/levels/QuotLimit;->l(Ljava/lang/CharSequence;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_7
    return-void
.end method

.method public final z()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLimitViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method
