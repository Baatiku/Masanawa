.class public final Lteam/opay/pay/pin/VerifyRegisterOtpRequest$Companion;
.super Ljava/lang/Object;
.source "PinViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/pin/VerifyRegisterOtpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JO\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/pin/VerifyRegisterOtpRequest$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "scene",
        "phoneNumber",
        "otp",
        "inviteCode",
        "serviceCode",
        "Lteam/opay/pay/account/otp/OtpChannel;",
        "otpChannel",
        "channel",
        "Lteam/opay/pay/pin/VerifyRegisterOtpRequest;",
        "a",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;)Lteam/opay/pay/pin/VerifyRegisterOtpRequest;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/pin/VerifyRegisterOtpRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;)Lteam/opay/pay/pin/VerifyRegisterOtpRequest;
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lteam/opay/pay/account/otp/OtpChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v5, p7

    .line 2
    .line 3
    const-string v0, "scene"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "phoneNumber"

    .line 11
    .line 12
    move-object/from16 v1, p2

    .line 13
    .line 14
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "otp"

    .line 18
    .line 19
    move-object/from16 v3, p3

    .line 20
    .line 21
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v4, "inviteCode"

    .line 25
    .line 26
    move-object/from16 v15, p4

    .line 27
    .line 28
    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v4, "channel"

    .line 32
    .line 33
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v16, Lteam/opay/pay/pin/VerifyRegisterOtpRequest;

    .line 37
    .line 38
    sget-object v4, Lteam/opay/pay/account/otp/OtpChannel;->USSD:Lteam/opay/pay/account/otp/OtpChannel;

    .line 39
    .line 40
    const-string v17, ""

    .line 41
    .line 42
    move-object/from16 v11, p6

    .line 43
    .line 44
    if-ne v11, v4, :cond_0

    .line 45
    .line 46
    new-instance v0, Lteam/opay/pay/pin/VerifyOtpRequest;

    .line 47
    .line 48
    sget-object v4, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 49
    .line 50
    invoke-virtual {v4}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    const/16 v14, 0x40

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    const-string v8, ""

    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v13, 0x0

    .line 61
    move-object v6, v0

    .line 62
    move-object/from16 v7, p2

    .line 63
    .line 64
    move-object/from16 v10, p5

    .line 65
    .line 66
    move-object/from16 v11, p6

    .line 67
    .line 68
    move-object v15, v4

    .line 69
    invoke-direct/range {v6 .. v15}, Lteam/opay/pay/pin/VerifyOtpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 70
    .line 71
    .line 72
    move-object v4, v0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    new-instance v4, Lteam/opay/pay/pin/VerifyOtpRequest;

    .line 75
    .line 76
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    move-object v8, v3

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move-object/from16 v8, v17

    .line 85
    .line 86
    :goto_0
    sget-object v0, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 87
    .line 88
    invoke-virtual {v0}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    const/16 v14, 0x40

    .line 93
    .line 94
    const/4 v15, 0x0

    .line 95
    const/4 v13, 0x0

    .line 96
    move-object v6, v4

    .line 97
    move-object/from16 v7, p2

    .line 98
    .line 99
    move-object/from16 v10, p5

    .line 100
    .line 101
    move-object/from16 v11, p6

    .line 102
    .line 103
    move-object/from16 v12, p1

    .line 104
    .line 105
    invoke-direct/range {v6 .. v15}, Lteam/opay/pay/pin/VerifyOtpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    const-string v0, "mtn"

    .line 109
    .line 110
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    move-object v6, v3

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    move-object/from16 v6, v17

    .line 119
    .line 120
    :goto_2
    const/16 v8, 0x40

    .line 121
    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    move-object/from16 v0, v16

    .line 125
    .line 126
    move-object/from16 v1, p2

    .line 127
    .line 128
    move-object/from16 v2, p1

    .line 129
    .line 130
    move-object/from16 v3, p4

    .line 131
    .line 132
    move-object/from16 v5, p7

    .line 133
    .line 134
    invoke-direct/range {v0 .. v9}, Lteam/opay/pay/pin/VerifyRegisterOtpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/pin/VerifyOtpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    .line 136
    .line 137
    return-object v16
.end method
