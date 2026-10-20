.class public final Lteam/opay/pay/payment/betting/GraphQLBettingWebService;
.super Ljava/lang/Object;
.source "BettingWebService.kt"

# interfaces
.implements Lb41;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J)\u0010\u000b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\n0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/GraphQLBettingWebService;",
        "Lb41;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lteam/opay/core/api/graphql/ConfigRsp;",
        "configRsp",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
        "Lteam/opay/core/api/graphql/BettingConfig;",
        "b",
        "(Lteam/opay/core/api/graphql/ConfigRsp;)Lteam/opay/core/android/arch/LiveDataCall;",
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
    iput-object p1, p0, Lteam/opay/pay/payment/betting/GraphQLBettingWebService;->a:Lxt;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/core/api/graphql/BettingConfig;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/GraphQLBettingWebService;->c(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/core/api/graphql/BettingConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/core/api/graphql/BettingConfig;
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
    check-cast p0, Lteam/opay/core/api/graphql/BettingConfig;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public b(Lteam/opay/core/api/graphql/ConfigRsp;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 2
    .param p1    # Lteam/opay/core/api/graphql/ConfigRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/graphql/ConfigRsp;",
            ")",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lteam/opay/core/api/graphql/BettingConfig;",
            ">;",
            "Lteam/opay/core/api/graphql/BettingConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "configRsp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/payment/betting/GraphQLBettingWebService;->a:Lxt;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lxt;->e(Lteam/opay/core/api/graphql/ConfigRsp;)Lretrofit2/Call;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lls6;

    .line 13
    .line 14
    invoke-direct {v0}, Lls6;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "200"

    .line 18
    .line 19
    invoke-static {p1, v1, v0}, Lyv;->b(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public bridge synthetic e(Lteam/opay/core/api/graphql/ConfigRsp;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/GraphQLBettingWebService;->b(Lteam/opay/core/api/graphql/ConfigRsp;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
