.class public final Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;
.super Lteam/opay/core/android/arch/NetworkBoundResource;
.source "AccountNewViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->k(Z)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundResource<",
        "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
        "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000f\u0012\u0004\u0012\u00020\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "com/opay/team/newhome/viewmodel/AccountNewRepository$a",
        "Lteam/opay/core/android/arch/NetworkBoundResource;",
        "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
        "item",
        "",
        "J",
        "(Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;)V",
        "data",
        "",
        "K",
        "(Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;)Z",
        "Landroidx/lifecycle/LiveData;",
        "u",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
        "F",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
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
.field public final synthetic c:Lcom/opay/team/newhome/viewmodel/AccountNewRepository;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;ZLteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->c:Lcom/opay/team/newhome/viewmodel/AccountNewRepository;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->d:Z

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/NetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic C(Lteam/opay/pay/api/HttpResponse;)Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->G(Lteam/opay/pay/api/HttpResponse;)Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->H(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->I(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final G(Lteam/opay/pay/api/HttpResponse;)Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/api/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final H(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->h(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "account_detail_v2"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v2, v0

    .line 17
    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    new-instance v0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a$a;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a$a;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/google/gson/Gson;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

    .line 44
    .line 45
    :goto_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->s()Lteam/opay/core/android/arch/AppExecutors;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v1, Llc;

    .line 54
    .line 55
    invoke-direct {v1, p0, v0}, Llc;-><init>(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static final I(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->f(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;)Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->K(Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public F()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
            ">;",
            "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->c:Lcom/opay/team/newhome/viewmodel/AccountNewRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->e(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;)Lcom/opay/team/home/api/HomeApiService$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/opay/team/home/api/HomeApiService$a;->a()Lretrofit2/Call;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lmc;

    .line 12
    .line 13
    invoke-direct {v1}, Lmc;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v0, v3, v1, v2, v3}, Lyv;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public J(Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;)V
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->c:Lcom/opay/team/newhome/viewmodel/AccountNewRepository;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->h(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/google/gson/Gson;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "account_detail_v2"

    .line 26
    .line 27
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->c:Lcom/opay/team/newhome/viewmodel/AccountNewRepository;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-static {p1, v0, v1}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->j(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;J)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public K(Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;)Z
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->d:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->c:Lcom/opay/team/newhome/viewmodel/AccountNewRepository;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->g(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    sub-long/2addr v0, v2

    .line 16
    invoke-static {}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->i()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    cmp-long p1, v0, v2

    .line 21
    .line 22
    if-lez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 28
    :goto_1
    return p1
.end method

.method public bridge synthetic l()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->F()Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public u()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->s()Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->c:Lcom/opay/team/newhome/viewmodel/AccountNewRepository;

    .line 10
    .line 11
    new-instance v2, Lkc;

    .line 12
    .line 13
    invoke-direct {v2, v1, p0}, Lkc;-><init>(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->c:Lcom/opay/team/newhome/viewmodel/AccountNewRepository;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->f(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;)Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public bridge synthetic z(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;->J(Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
