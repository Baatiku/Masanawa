.class public final Lteam/opay/core/api/GraphQLSessionWebService;
.super Ljava/lang/Object;
.source "SessionWebService.kt"

# interfaces
.implements Lwhd;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/core/api/GraphQLSessionWebService;",
        "Lwhd;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/core/api/graphql/Response;",
        "Lteam/opay/core/api/Session;",
        "c",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
        "Lxt;",
        "a",
        "Lxt;",
        "api",
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
.field public final a:Lxt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

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
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lteam/opay/core/api/GraphQLSessionWebService;->a:Lxt;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic b(Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/api/Session;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/api/GraphQLSessionWebService;->d(Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/api/Session;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/api/Session;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lteam/opay/core/api/SessionWebServiceKt;->a(Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/api/Session;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQLSessionWebService;->c()Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/core/api/graphql/Response;",
            "Lteam/opay/core/api/Session;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQLSessionWebService;->a:Lxt;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL;->h()Lteam/opay/core/api/graphql/Request;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Los6;

    .line 10
    .line 11
    invoke-direct {v2}, Los6;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lsu;->g(Lxt;Lteam/opay/core/api/graphql/Request;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
