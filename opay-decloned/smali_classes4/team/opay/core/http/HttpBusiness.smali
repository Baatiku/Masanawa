.class public Lteam/opay/core/http/HttpBusiness;
.super Ljava/lang/Object;
.source "HttpResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0006\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/core/http/HttpBusiness;",
        "",
        "Lteam/opay/core/http/BusinessInfo;",
        "commonWindow",
        "<init>",
        "(Lteam/opay/core/http/BusinessInfo;)V",
        "a",
        "Lteam/opay/core/http/BusinessInfo;",
        "()Lteam/opay/core/http/BusinessInfo;",
        "common-http_release"
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
.field private final a:Lteam/opay/core/http/BusinessInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "commonWindow"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lteam/opay/core/http/HttpBusiness;-><init>(Lteam/opay/core/http/BusinessInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/core/http/BusinessInfo;)V
    .locals 0
    .param p1    # Lteam/opay/core/http/BusinessInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/core/http/HttpBusiness;->a:Lteam/opay/core/http/BusinessInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/core/http/BusinessInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lteam/opay/core/http/HttpBusiness;-><init>(Lteam/opay/core/http/BusinessInfo;)V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/core/http/BusinessInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/HttpBusiness;->a:Lteam/opay/core/http/BusinessInfo;

    .line 2
    .line 3
    return-object v0
.end method
