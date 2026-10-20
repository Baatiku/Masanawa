.class public final Lteam/opay/core/auth/AuthRepository$d;
.super Lteam/opay/core/android/arch/NetworkBoundAction;
.source "AuthRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/auth/AuthRepository;->g(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundAction<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u0008\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/core/auth/AuthRepository$d",
        "Lteam/opay/core/android/arch/NetworkBoundAction;",
        "",
        "response",
        "i",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/core/api/graphql/RestResponse;",
        "g",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
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
.field public final synthetic c:Lteam/opay/core/auth/AuthRepository;

.field public final synthetic d:Lteam/opay/pay/account/otp/OtpChannel;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lteam/opay/core/api/Country;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/auth/AuthRepository$d;->c:Lteam/opay/core/auth/AuthRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/auth/AuthRepository$d;->d:Lteam/opay/pay/account/otp/OtpChannel;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/auth/AuthRepository$d;->e:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/core/auth/AuthRepository$d;->f:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/core/auth/AuthRepository$d;->g:Lteam/opay/core/api/Country;

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/core/auth/AuthRepository$d;->h:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lteam/opay/core/auth/AuthRepository$d;->i:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0, p8}, Lteam/opay/core/android/arch/NetworkBoundAction;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic f(Lteam/opay/core/api/graphql/RestResponse;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/auth/AuthRepository$d;->h(Lteam/opay/core/api/graphql/RestResponse;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/core/api/graphql/RestResponse;)Ljava/lang/String;
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
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public bridge synthetic d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/auth/AuthRepository$d;->g()Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/auth/AuthRepository$d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/core/api/graphql/RestResponse<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/core/auth/AuthRepository$d;->c:Lteam/opay/core/auth/AuthRepository;

    .line 4
    .line 5
    invoke-static {v1}, Lteam/opay/core/auth/AuthRepository;->a(Lteam/opay/core/auth/AuthRepository;)Lxt;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lteam/opay/core/auth/AuthRepository$d;->c:Lteam/opay/core/auth/AuthRepository;

    .line 10
    .line 11
    invoke-static {v2}, Lteam/opay/core/auth/AuthRepository;->a(Lteam/opay/core/auth/AuthRepository;)Lxt;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, v0, Lteam/opay/core/auth/AuthRepository$d;->d:Lteam/opay/pay/account/otp/OtpChannel;

    .line 16
    .line 17
    sget-object v4, Lteam/opay/pay/account/otp/OtpChannel;->USSD:Lteam/opay/pay/account/otp/OtpChannel;

    .line 18
    .line 19
    if-ne v3, v4, :cond_0

    .line 20
    .line 21
    new-instance v3, Lteam/opay/pay/pin/VerifyOtpRequest;

    .line 22
    .line 23
    iget-object v6, v0, Lteam/opay/core/auth/AuthRepository$d;->e:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v7, v0, Lteam/opay/core/auth/AuthRepository$d;->f:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v4, v0, Lteam/opay/core/auth/AuthRepository$d;->g:Lteam/opay/core/api/Country;

    .line 28
    .line 29
    invoke-virtual {v4}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    iget-object v9, v0, Lteam/opay/core/auth/AuthRepository$d;->h:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v10, v0, Lteam/opay/core/auth/AuthRepository$d;->d:Lteam/opay/pay/account/otp/OtpChannel;

    .line 36
    .line 37
    const/16 v13, 0x40

    .line 38
    .line 39
    const/4 v14, 0x0

    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x0

    .line 42
    move-object v5, v3

    .line 43
    invoke-direct/range {v5 .. v14}, Lteam/opay/pay/pin/VerifyOtpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v3, Lteam/opay/pay/pin/VerifyOtpRequest;

    .line 48
    .line 49
    iget-object v4, v0, Lteam/opay/core/auth/AuthRepository$d;->e:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v5, v0, Lteam/opay/core/auth/AuthRepository$d;->f:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v6, v0, Lteam/opay/core/auth/AuthRepository$d;->g:Lteam/opay/core/api/Country;

    .line 54
    .line 55
    invoke-virtual {v6}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v18

    .line 59
    iget-object v6, v0, Lteam/opay/core/auth/AuthRepository$d;->h:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v7, v0, Lteam/opay/core/auth/AuthRepository$d;->d:Lteam/opay/pay/account/otp/OtpChannel;

    .line 62
    .line 63
    iget-object v8, v0, Lteam/opay/core/auth/AuthRepository$d;->i:Ljava/lang/String;

    .line 64
    .line 65
    const/16 v23, 0x40

    .line 66
    .line 67
    const/16 v24, 0x0

    .line 68
    .line 69
    const/16 v22, 0x0

    .line 70
    .line 71
    move-object v15, v3

    .line 72
    move-object/from16 v16, v4

    .line 73
    .line 74
    move-object/from16 v17, v5

    .line 75
    .line 76
    move-object/from16 v19, v6

    .line 77
    .line 78
    move-object/from16 v20, v7

    .line 79
    .line 80
    move-object/from16 v21, v8

    .line 81
    .line 82
    invoke-direct/range {v15 .. v24}, Lteam/opay/pay/pin/VerifyOtpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-interface {v2, v3}, Lxt;->l(Lteam/opay/pay/pin/VerifyOtpRequest;)Lretrofit2/Call;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    new-instance v3, Lr70;

    .line 90
    .line 91
    invoke-direct {v3}, Lr70;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v2, v3}, Lsu;->e(Lxt;Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    return-object v1
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
