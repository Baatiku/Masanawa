.class public final Lteam/opay/business/provider/active/ActiveProviderImpl;
.super Ljava/lang/Object;
.source "ActiveProvider.kt"

# interfaces
.implements Lxd;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J)\u0010\u000c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0017\u00a2\u0006\u0004\u0008\u000c\u0010\rJ+\u0010\u0010\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\n0\t0\u00082\u0006\u0010\u0007\u001a\u00020\u000eH\u0017\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0007\u001a\u00020\u0012H\u0097@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J)\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\t0\u00082\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\nH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/business/provider/active/ActiveProviderImpl;",
        "Lxd;",
        "Lteam/opay/business/provider/active/ActiveProviderRepository;",
        "repository",
        "<init>",
        "(Lteam/opay/business/provider/active/ActiveProviderRepository;)V",
        "Lteam/opay/business/provider/active/BannerRequest;",
        "req",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "",
        "Lteam/opay/business/provider/active/BannerEntity;",
        "b",
        "(Lteam/opay/business/provider/active/BannerRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/provider/active/NoticeRequest;",
        "Lteam/opay/business/provider/active/NoticeEntity;",
        "h",
        "(Lteam/opay/business/provider/active/NoticeRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/provider/active/BannerPageFlagRequest;",
        "Lteam/opay/core/http/HttpResult;",
        "Lteam/opay/business/provider/active/BannerPageFlagResponse;",
        "e",
        "(Lteam/opay/business/provider/active/BannerPageFlagRequest;Ljr2;)Ljava/lang/Object;",
        "",
        "adpCode",
        "Lteam/opay/business/provider/active/AdResponse;",
        "l",
        "(Ljava/util/List;)Landroidx/lifecycle/LiveData;",
        "a",
        "Lteam/opay/business/provider/active/ActiveProviderRepository;",
        "business-provider_release"
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
.field public final a:Lteam/opay/business/provider/active/ActiveProviderRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/business/provider/active/ActiveProviderRepository;)V
    .locals 1
    .param p1    # Lteam/opay/business/provider/active/ActiveProviderRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "repository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/business/provider/active/ActiveProviderImpl;->a:Lteam/opay/business/provider/active/ActiveProviderRepository;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public b(Lteam/opay/business/provider/active/BannerRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/business/provider/active/BannerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/provider/active/BannerRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/BannerEntity;",
            ">;>;>;"
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
    iget-object v0, p0, Lteam/opay/business/provider/active/ActiveProviderImpl;->a:Lteam/opay/business/provider/active/ActiveProviderRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/business/provider/active/ActiveProviderRepository;->c(Lteam/opay/business/provider/active/BannerRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public e(Lteam/opay/business/provider/active/BannerPageFlagRequest;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/business/provider/active/BannerPageFlagRequest;
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
            "Lteam/opay/business/provider/active/BannerPageFlagRequest;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/provider/active/BannerPageFlagResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/ActiveProviderImpl;->a:Lteam/opay/business/provider/active/ActiveProviderRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lteam/opay/business/provider/active/ActiveProviderRepository;->d(Lteam/opay/business/provider/active/BannerPageFlagRequest;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h(Lteam/opay/business/provider/active/NoticeRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/business/provider/active/NoticeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/provider/active/NoticeRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/NoticeEntity;",
            ">;>;>;"
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
    iget-object v0, p0, Lteam/opay/business/provider/active/ActiveProviderImpl;->a:Lteam/opay/business/provider/active/ActiveProviderRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/business/provider/active/ActiveProviderRepository;->e(Lteam/opay/business/provider/active/NoticeRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public l(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/provider/active/AdResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "adpCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    new-instance v2, Lteam/opay/business/provider/active/AdpCodeItem;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Lteam/opay/business/provider/active/AdpCodeItem;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lteam/opay/business/provider/active/ActiveProviderImpl;->a:Lteam/opay/business/provider/active/ActiveProviderRepository;

    .line 43
    .line 44
    new-instance v1, Lteam/opay/business/provider/active/AdRequest;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Lteam/opay/business/provider/active/AdRequest;-><init>(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lteam/opay/business/provider/active/ActiveProviderRepository;->b(Lteam/opay/business/provider/active/AdRequest;)Landroidx/lifecycle/LiveData;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method
