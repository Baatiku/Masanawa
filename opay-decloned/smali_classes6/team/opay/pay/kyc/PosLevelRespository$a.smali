.class public final Lteam/opay/pay/kyc/PosLevelRespository$a;
.super Ljava/lang/Object;
.source "PosLevelRespository.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/PosLevelRespository;->k(Lteam/opay/pay/kyc/DownloadPosLevelRequest;Ljava/lang/String;Ljava/lang/String;Lyi3;)V
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
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J+\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\u000c\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "team/opay/pay/kyc/PosLevelRespository$a",
        "Lretrofit2/Callback;",
        "Lokhttp3/ResponseBody;",
        "Lretrofit2/Call;",
        "call",
        "Lretrofit2/Response;",
        "response",
        "",
        "onResponse",
        "(Lretrofit2/Call;Lretrofit2/Response;)V",
        "",
        "throwable",
        "onFailure",
        "(Lretrofit2/Call;Ljava/lang/Throwable;)V",
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
.field public final synthetic a:Lteam/opay/pay/kyc/PosLevelRespository;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lyi3;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/PosLevelRespository;Ljava/lang/String;Ljava/lang/String;Lyi3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/PosLevelRespository$a;->a:Lteam/opay/pay/kyc/PosLevelRespository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/PosLevelRespository$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/PosLevelRespository$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/kyc/PosLevelRespository$a;->d:Lyi3;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
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
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "throwable"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/kyc/PosLevelRespository$a;->d:Lyi3;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lyi3;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
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
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "response"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/kyc/PosLevelRespository$a;->a:Lteam/opay/pay/kyc/PosLevelRespository;

    .line 12
    .line 13
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lokhttp3/ResponseBody;

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/pay/kyc/PosLevelRespository$a;->b:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/pay/kyc/PosLevelRespository$a;->c:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lteam/opay/pay/kyc/PosLevelRespository$a;->d:Lyi3;

    .line 24
    .line 25
    invoke-static {p1, p2, v0, v1, v2}, Lteam/opay/pay/kyc/PosLevelRespository;->j(Lteam/opay/pay/kyc/PosLevelRespository;Lokhttp3/ResponseBody;Ljava/lang/String;Ljava/lang/String;Lyi3;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
