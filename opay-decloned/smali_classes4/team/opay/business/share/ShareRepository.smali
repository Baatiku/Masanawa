.class public final Lteam/opay/business/share/ShareRepository;
.super Ljava/lang/Object;
.source "ShareViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000b0\n2\u0006\u0010\t\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u000b0\n2\u0006\u0010\t\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\'\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/business/share/ShareRepository;",
        "",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "appExecutors",
        "Lxu;",
        "apiService",
        "<init>",
        "(Lteam/opay/core/http/arch/AppExecutors;Lxu;)V",
        "Lteam/opay/business/share/api/ShareCheckReq;",
        "request",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "Lteam/opay/business/share/api/ShareCheckResp;",
        "c",
        "(Lteam/opay/business/share/api/ShareCheckReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/share/api/SmsShareReq;",
        "Lteam/opay/business/share/api/SmsShareResp;",
        "d",
        "(Lteam/opay/business/share/api/SmsShareReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/share/api/EmailShareReq;",
        "Lteam/opay/business/share/api/EmailShareResp;",
        "e",
        "(Lteam/opay/business/share/api/EmailShareReq;)Landroidx/lifecycle/LiveData;",
        "Landroid/content/Context;",
        "context",
        "",
        "imageUrl",
        "Lteam/opay/business/share/utils/AdapterListener;",
        "listener",
        "",
        "b",
        "(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/share/utils/AdapterListener;)V",
        "a",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "Lxu;",
        "business-share_release"
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
.field public final a:Lteam/opay/core/http/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lxu;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/http/arch/AppExecutors;Lxu;)V
    .locals 1
    .param p1    # Lteam/opay/core/http/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lxu;
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
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/business/share/ShareRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/business/share/ShareRepository;->b:Lxu;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a(Lteam/opay/business/share/ShareRepository;)Lxu;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/share/ShareRepository;->b:Lxu;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/share/utils/AdapterListener;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/business/share/utils/AdapterListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "imageUrl"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/business/share/ShareRepository;->b:Lxu;

    .line 12
    .line 13
    invoke-interface {v0, p2}, Lxu;->b(Ljava/lang/String;)Lretrofit2/Call;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lteam/opay/business/share/ShareRepository$a;

    .line 18
    .line 19
    invoke-direct {v1, p1, p2, p3}, Lteam/opay/business/share/ShareRepository$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/share/utils/AdapterListener;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final c(Lteam/opay/business/share/api/ShareCheckReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/share/api/ShareCheckReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/share/api/ShareCheckReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/share/api/ShareCheckResp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/share/ShareRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/share/ShareRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/share/ShareRepository$b;-><init>(Lteam/opay/business/share/ShareRepository;Lteam/opay/business/share/api/ShareCheckReq;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final d(Lteam/opay/business/share/api/SmsShareReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/share/api/SmsShareReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/share/api/SmsShareReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/share/api/SmsShareResp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/share/ShareRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/share/ShareRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/share/ShareRepository$c;-><init>(Lteam/opay/business/share/ShareRepository;Lteam/opay/business/share/api/SmsShareReq;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final e(Lteam/opay/business/share/api/EmailShareReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/share/api/EmailShareReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/share/api/EmailShareReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/share/api/EmailShareResp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/share/ShareRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/share/ShareRepository$d;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/share/ShareRepository$d;-><init>(Lteam/opay/business/share/ShareRepository;Lteam/opay/business/share/api/EmailShareReq;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
