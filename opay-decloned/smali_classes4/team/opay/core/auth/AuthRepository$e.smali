.class public final Lteam/opay/core/auth/AuthRepository$e;
.super Lteam/opay/core/android/arch/NetworkBoundAction;
.source "AuthRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/auth/AuthRepository;->h(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundAction<",
        "Lteam/opay/pay/pin/VerifyRegisterOtpResult;",
        "Lteam/opay/pay/pin/VerifyRegisterOtpResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u0008\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/core/auth/AuthRepository$e",
        "Lteam/opay/core/android/arch/NetworkBoundAction;",
        "Lteam/opay/pay/pin/VerifyRegisterOtpResult;",
        "response",
        "i",
        "(Lteam/opay/pay/pin/VerifyRegisterOtpResult;)Lteam/opay/pay/pin/VerifyRegisterOtpResult;",
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

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lteam/opay/pay/account/otp/OtpChannel;

.field public final synthetic h:Lteam/opay/core/api/Country;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lteam/opay/core/auth/AuthRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Lteam/opay/core/api/Country;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/auth/AuthRepository$e;->c:Lteam/opay/core/auth/AuthRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/auth/AuthRepository$e;->d:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/auth/AuthRepository$e;->e:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/core/auth/AuthRepository$e;->f:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/core/auth/AuthRepository$e;->g:Lteam/opay/pay/account/otp/OtpChannel;

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/core/auth/AuthRepository$e;->h:Lteam/opay/core/api/Country;

    .line 12
    .line 13
    iput-object p7, p0, Lteam/opay/core/auth/AuthRepository$e;->i:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lteam/opay/core/auth/AuthRepository$e;->j:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lteam/opay/core/auth/AuthRepository$e;->k:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {p0, p10}, Lteam/opay/core/android/arch/NetworkBoundAction;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic f(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/pay/pin/VerifyRegisterOtpResult;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/auth/AuthRepository$e;->h(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/pay/pin/VerifyRegisterOtpResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/pay/pin/VerifyRegisterOtpResult;
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
    check-cast p0, Lteam/opay/pay/pin/VerifyRegisterOtpResult;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public bridge synthetic d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/auth/AuthRepository$e;->g()Lteam/opay/core/android/arch/LiveDataCall;

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
    check-cast p1, Lteam/opay/pay/pin/VerifyRegisterOtpResult;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/auth/AuthRepository$e;->i(Lteam/opay/pay/pin/VerifyRegisterOtpResult;)Lteam/opay/pay/pin/VerifyRegisterOtpResult;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/core/api/graphql/RestResponse<",
            "Lteam/opay/pay/pin/VerifyRegisterOtpResult;",
            ">;",
            "Lteam/opay/pay/pin/VerifyRegisterOtpResult;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/core/auth/AuthRepository$e;->c:Lteam/opay/core/auth/AuthRepository;

    .line 4
    .line 5
    invoke-static {v1}, Lteam/opay/core/auth/AuthRepository;->a(Lteam/opay/core/auth/AuthRepository;)Lxt;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lteam/opay/core/auth/AuthRepository$e;->c:Lteam/opay/core/auth/AuthRepository;

    .line 10
    .line 11
    invoke-static {v2}, Lteam/opay/core/auth/AuthRepository;->a(Lteam/opay/core/auth/AuthRepository;)Lxt;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v13, Lteam/opay/pay/pin/VerifyRegisterOtpRequest;

    .line 16
    .line 17
    iget-object v14, v0, Lteam/opay/core/auth/AuthRepository$e;->d:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v15, v0, Lteam/opay/core/auth/AuthRepository$e;->e:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v12, v0, Lteam/opay/core/auth/AuthRepository$e;->f:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, v0, Lteam/opay/core/auth/AuthRepository$e;->g:Lteam/opay/pay/account/otp/OtpChannel;

    .line 24
    .line 25
    sget-object v4, Lteam/opay/pay/account/otp/OtpChannel;->USSD:Lteam/opay/pay/account/otp/OtpChannel;

    .line 26
    .line 27
    const-string v16, ""

    .line 28
    .line 29
    if-ne v3, v4, :cond_0

    .line 30
    .line 31
    new-instance v17, Lteam/opay/pay/pin/VerifyOtpRequest;

    .line 32
    .line 33
    iget-object v3, v0, Lteam/opay/core/auth/AuthRepository$e;->h:Lteam/opay/core/api/Country;

    .line 34
    .line 35
    invoke-virtual {v3}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-object v7, v0, Lteam/opay/core/auth/AuthRepository$e;->i:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v8, v0, Lteam/opay/core/auth/AuthRepository$e;->g:Lteam/opay/pay/account/otp/OtpChannel;

    .line 42
    .line 43
    const/16 v11, 0x40

    .line 44
    .line 45
    const/16 v18, 0x0

    .line 46
    .line 47
    const-string v5, ""

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v10, 0x0

    .line 51
    move-object/from16 v3, v17

    .line 52
    .line 53
    move-object v4, v14

    .line 54
    move-object/from16 v19, v12

    .line 55
    .line 56
    move-object/from16 v12, v18

    .line 57
    .line 58
    invoke-direct/range {v3 .. v12}, Lteam/opay/pay/pin/VerifyOtpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    move-object/from16 v7, v17

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_0
    move-object/from16 v19, v12

    .line 65
    .line 66
    new-instance v17, Lteam/opay/pay/pin/VerifyOtpRequest;

    .line 67
    .line 68
    iget-object v3, v0, Lteam/opay/core/auth/AuthRepository$e;->j:Ljava/lang/String;

    .line 69
    .line 70
    const-string v4, "otp"

    .line 71
    .line 72
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    iget-object v3, v0, Lteam/opay/core/auth/AuthRepository$e;->k:Ljava/lang/String;

    .line 79
    .line 80
    move-object v5, v3

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move-object/from16 v5, v16

    .line 83
    .line 84
    :goto_1
    iget-object v3, v0, Lteam/opay/core/auth/AuthRepository$e;->h:Lteam/opay/core/api/Country;

    .line 85
    .line 86
    invoke-virtual {v3}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    iget-object v7, v0, Lteam/opay/core/auth/AuthRepository$e;->i:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v8, v0, Lteam/opay/core/auth/AuthRepository$e;->g:Lteam/opay/pay/account/otp/OtpChannel;

    .line 93
    .line 94
    iget-object v9, v0, Lteam/opay/core/auth/AuthRepository$e;->e:Ljava/lang/String;

    .line 95
    .line 96
    const/16 v11, 0x40

    .line 97
    .line 98
    const/4 v12, 0x0

    .line 99
    const/4 v10, 0x0

    .line 100
    move-object/from16 v3, v17

    .line 101
    .line 102
    move-object v4, v14

    .line 103
    invoke-direct/range {v3 .. v12}, Lteam/opay/pay/pin/VerifyOtpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :goto_2
    iget-object v8, v0, Lteam/opay/core/auth/AuthRepository$e;->j:Ljava/lang/String;

    .line 108
    .line 109
    const-string v3, "mtn"

    .line 110
    .line 111
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    iget-object v3, v0, Lteam/opay/core/auth/AuthRepository$e;->k:Ljava/lang/String;

    .line 118
    .line 119
    move-object v9, v3

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    move-object/from16 v9, v16

    .line 122
    .line 123
    :goto_3
    const/16 v11, 0x40

    .line 124
    .line 125
    const/4 v12, 0x0

    .line 126
    const/4 v10, 0x0

    .line 127
    move-object v3, v13

    .line 128
    move-object v4, v14

    .line 129
    move-object v5, v15

    .line 130
    move-object/from16 v6, v19

    .line 131
    .line 132
    invoke-direct/range {v3 .. v12}, Lteam/opay/pay/pin/VerifyRegisterOtpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/pin/VerifyOtpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v2, v13}, Lxt;->u(Lteam/opay/pay/pin/VerifyRegisterOtpRequest;)Lretrofit2/Call;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    new-instance v3, Ls70;

    .line 140
    .line 141
    invoke-direct {v3}, Ls70;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-static {v1, v2, v3}, Lsu;->e(Lxt;Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    return-object v1
.end method

.method public i(Lteam/opay/pay/pin/VerifyRegisterOtpResult;)Lteam/opay/pay/pin/VerifyRegisterOtpResult;
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
