.class public final Lteam/opay/pay/wallet/cashback/CashBackWebServiceIml;
.super Ljava/lang/Object;
.source "CashBackWebService.kt"

# interfaces
.implements Ls22;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JA\u0010\u0010\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e0\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/pay/wallet/cashback/CashBackWebServiceIml;",
        "Ls22;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "",
        "lastId",
        "",
        "operationType",
        "",
        "pageSize",
        "threeMonthData",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "Lteam/opay/core/api/graphql/CashBackRsp;",
        "a",
        "(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "Lxt;",
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
    iput-object p1, p0, Lteam/opay/pay/wallet/cashback/CashBackWebServiceIml;->a:Lxt;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic b(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/CashBackRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/cashback/CashBackWebServiceIml;->c(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/CashBackRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/CashBackRsp;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/core/api/graphql/CashBackRsp;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 12
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/core/api/graphql/CashBackRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "threeMonthData"

    .line 3
    .line 4
    move-object/from16 v7, p5

    .line 5
    .line 6
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lteam/opay/pay/wallet/cashback/CashBackWebServiceIml;->a:Lxt;

    .line 10
    .line 11
    new-instance v11, Lteam/opay/core/api/graphql/CashBackReq;

    .line 12
    .line 13
    const/16 v9, 0x10

    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    move-object v2, v11

    .line 18
    move-wide v3, p1

    .line 19
    move-object v5, p3

    .line 20
    move-object/from16 v6, p4

    .line 21
    .line 22
    invoke-direct/range {v2 .. v10}, Lteam/opay/core/api/graphql/CashBackReq;-><init>(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v11}, Lxt;->w(Lteam/opay/core/api/graphql/CashBackReq;)Lretrofit2/Call;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, v0, Lteam/opay/pay/wallet/cashback/CashBackWebServiceIml;->a:Lxt;

    .line 30
    .line 31
    new-instance v3, Lt22;

    .line 32
    .line 33
    invoke-direct {v3}, Lt22;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v1, v3}, Lsu;->e(Lxt;Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    return-object v1
.end method
