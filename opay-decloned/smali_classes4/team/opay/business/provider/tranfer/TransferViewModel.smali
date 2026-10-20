.class public final Lteam/opay/business/provider/tranfer/TransferViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "TransferProvider.kt"

# interfaces
.implements Lv8f;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B)\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0096A\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/business/provider/tranfer/TransferViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lv8f;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/business/provider/active/ActiveProviderRepository;",
        "repository",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "provider",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/business/provider/active/ActiveProviderRepository;Landroidx/lifecycle/SavedStateHandle;Lv8f;)V",
        "Lteam/opay/business/provider/tranfer/StampDutyRequest;",
        "request",
        "Lteam/opay/core/http/HttpResult;",
        "Lteam/opay/business/provider/tranfer/StampDutyResponse;",
        "g",
        "(Lteam/opay/business/provider/tranfer/StampDutyRequest;Ljr2;)Ljava/lang/Object;",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/business/provider/active/ActiveProviderRepository;",
        "d",
        "Landroidx/lifecycle/SavedStateHandle;",
        "e",
        "Lv8f;",
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

.field public final c:Lteam/opay/business/provider/active/ActiveProviderRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/SavedStateHandle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lv8f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/business/provider/active/ActiveProviderRepository;Landroidx/lifecycle/SavedStateHandle;Lv8f;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/provider/active/ActiveProviderRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/SavedStateHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lv8f;
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
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "savedStateHandle"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "provider"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/business/provider/tranfer/TransferViewModel;->b:Landroid/app/Application;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/business/provider/tranfer/TransferViewModel;->c:Lteam/opay/business/provider/active/ActiveProviderRepository;

    .line 27
    .line 28
    iput-object p3, p0, Lteam/opay/business/provider/tranfer/TransferViewModel;->d:Landroidx/lifecycle/SavedStateHandle;

    .line 29
    .line 30
    iput-object p4, p0, Lteam/opay/business/provider/tranfer/TransferViewModel;->e:Lv8f;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public g(Lteam/opay/business/provider/tranfer/StampDutyRequest;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/business/provider/tranfer/StampDutyRequest;
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
            "Lteam/opay/business/provider/tranfer/StampDutyRequest;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/provider/tranfer/StampDutyResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/tranfer/TransferViewModel;->e:Lv8f;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lv8f;->g(Lteam/opay/business/provider/tranfer/StampDutyRequest;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
