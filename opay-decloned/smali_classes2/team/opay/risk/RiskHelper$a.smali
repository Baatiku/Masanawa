.class public final Lteam/opay/risk/RiskHelper$a;
.super Ljava/lang/Object;
.source "RiskHelper.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/risk/RiskHelper;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J+\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\u000b\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/risk/RiskHelper$a",
        "Lretrofit2/Callback;",
        "Lokhttp3/ResponseBody;",
        "Lretrofit2/Call;",
        "p0",
        "Lretrofit2/Response;",
        "p1",
        "",
        "onResponse",
        "(Lretrofit2/Call;Lretrofit2/Response;)V",
        "",
        "onFailure",
        "(Lretrofit2/Call;Ljava/lang/Throwable;)V",
        "risk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/risk/DeviceInfoReq;


# direct methods
.method public constructor <init>(Lteam/opay/risk/DeviceInfoReq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/risk/RiskHelper$a;->a:Lteam/opay/risk/DeviceInfoReq;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "p1"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lnp2;->a:Lnp2;

    .line 12
    .line 13
    const-string v0, "fetched fail"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lnp2;->g(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lnp2;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lkotlin/Pair;

    .line 23
    .line 24
    const-string v1, "data"

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {v0, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    new-array p2, p2, [Lkotlin/Pair;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    aput-object v0, p2, v1

    .line 38
    .line 39
    const-string v0, "opay_deviceinfo_fail"

    .line 40
    .line 41
    invoke-interface {p1, v0, p2}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "p1"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lnp2;->a:Lnp2;

    .line 12
    .line 13
    const-string p2, "fetch success"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lnp2;->g(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lnp2;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p2}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Lnp2;->i(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lnp2;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    new-instance v0, Lkotlin/Pair;

    .line 34
    .line 35
    iget-object v1, p0, Lteam/opay/risk/RiskHelper$a;->a:Lteam/opay/risk/DeviceInfoReq;

    .line 36
    .line 37
    invoke-virtual {v1}, Lteam/opay/risk/DeviceInfoReq;->b()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "deviceId"

    .line 42
    .line 43
    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lkotlin/Pair;

    .line 47
    .line 48
    iget-object v2, p0, Lteam/opay/risk/RiskHelper$a;->a:Lteam/opay/risk/DeviceInfoReq;

    .line 49
    .line 50
    invoke-virtual {v2}, Lteam/opay/risk/DeviceInfoReq;->d()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "userId"

    .line 55
    .line 56
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lkotlin/Pair;

    .line 60
    .line 61
    iget-object v3, p0, Lteam/opay/risk/RiskHelper$a;->a:Lteam/opay/risk/DeviceInfoReq;

    .line 62
    .line 63
    invoke-virtual {v3}, Lteam/opay/risk/DeviceInfoReq;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p1, v3}, Lnp2;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "blackBox"

    .line 76
    .line 77
    invoke-direct {v2, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    new-instance v3, Lkotlin/Pair;

    .line 81
    .line 82
    iget-object v4, p0, Lteam/opay/risk/RiskHelper$a;->a:Lteam/opay/risk/DeviceInfoReq;

    .line 83
    .line 84
    invoke-virtual {v4}, Lteam/opay/risk/DeviceInfoReq;->c()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {p1, v4}, Lnp2;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v4, "ishumeiId"

    .line 97
    .line 98
    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    const/4 p1, 0x4

    .line 102
    new-array p1, p1, [Lkotlin/Pair;

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    aput-object v0, p1, v4

    .line 106
    .line 107
    const/4 v0, 0x1

    .line 108
    aput-object v1, p1, v0

    .line 109
    .line 110
    const/4 v0, 0x2

    .line 111
    aput-object v2, p1, v0

    .line 112
    .line 113
    const/4 v0, 0x3

    .line 114
    aput-object v3, p1, v0

    .line 115
    .line 116
    const-string v0, "opay_deviceinfo_success"

    .line 117
    .line 118
    invoke-interface {p2, v0, p1}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method
