.class public final Lteam/opay/business/chat/api/ChatProviderImpl;
.super Ljava/lang/Object;
.source "ChatProvider.kt"

# interfaces
.implements Lfa2;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/business/chat/api/ChatProviderImpl;",
        "Lfa2;",
        "Lteam/opay/business/chat/api/ChatProviderRepository;",
        "repository",
        "<init>",
        "(Lteam/opay/business/chat/api/ChatProviderRepository;)V",
        "Lteam/opay/business/chat/api/OrderIMReq;",
        "request",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "Lteam/opay/business/chat/api/ChatOrderInfo;",
        "c",
        "(Lteam/opay/business/chat/api/OrderIMReq;)Landroidx/lifecycle/LiveData;",
        "a",
        "Lteam/opay/business/chat/api/ChatProviderRepository;",
        "opay-chat-gpt_release"
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
.field public final a:Lteam/opay/business/chat/api/ChatProviderRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/business/chat/api/ChatProviderRepository;)V
    .locals 1
    .param p1    # Lteam/opay/business/chat/api/ChatProviderRepository;
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
    iput-object p1, p0, Lteam/opay/business/chat/api/ChatProviderImpl;->a:Lteam/opay/business/chat/api/ChatProviderRepository;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c(Lteam/opay/business/chat/api/OrderIMReq;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/business/chat/api/OrderIMReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/chat/api/OrderIMReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/chat/api/ChatOrderInfo;",
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
    iget-object v0, p0, Lteam/opay/business/chat/api/ChatProviderImpl;->a:Lteam/opay/business/chat/api/ChatProviderRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/business/chat/api/ChatProviderRepository;->b(Lteam/opay/business/chat/api/OrderIMReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
