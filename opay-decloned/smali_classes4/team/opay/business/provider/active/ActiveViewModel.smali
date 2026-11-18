.class public final Lteam/opay/business/provider/active/ActiveViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "ActiveProvider.kt"

# interfaces
.implements Lxd;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ*\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0096\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J*\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\n0\u000e0\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0097\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J,\u0010\u0019\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\n0\u000e0\r2\u0006\u0010\u0013\u001a\u00020\u0017H\u0097\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001e\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0013\u001a\u00020\u001bH\u0097A\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010 R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/business/provider/active/ActiveViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lxd;",
        "Landroid/app/Application;",
        "app",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "provider",
        "<init>",
        "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lxd;)V",
        "",
        "",
        "adpCode",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "Lteam/opay/business/provider/active/AdResponse;",
        "l",
        "(Ljava/util/List;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/provider/active/BannerRequest;",
        "req",
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
        "Landroid/app/Application;",
        "c",
        "Landroidx/lifecycle/SavedStateHandle;",
        "d",
        "Lxd;",
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
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/SavedStateHandle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lxd;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lxd;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/SavedStateHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lxd;
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
    const-string v0, "savedStateHandle"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "provider"

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
    iput-object p1, p0, Lteam/opay/business/provider/active/ActiveViewModel;->b:Landroid/app/Application;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/business/provider/active/ActiveViewModel;->c:Landroidx/lifecycle/SavedStateHandle;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/business/provider/active/ActiveViewModel;->d:Lxd;

    .line 24
    .line 25
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
    iget-object v0, p0, Lteam/opay/business/provider/active/ActiveViewModel;->d:Lxd;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lxd;->b(Lteam/opay/business/provider/active/BannerRequest;)Landroidx/lifecycle/LiveData;

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
    iget-object v0, p0, Lteam/opay/business/provider/active/ActiveViewModel;->d:Lxd;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lxd;->e(Lteam/opay/business/provider/active/BannerPageFlagRequest;Ljr2;)Ljava/lang/Object;

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
    iget-object v0, p0, Lteam/opay/business/provider/active/ActiveViewModel;->d:Lxd;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lxd;->h(Lteam/opay/business/provider/active/NoticeRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public l(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/business/provider/active/ActiveViewModel;->d:Lxd;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lxd;->l(Ljava/util/List;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
