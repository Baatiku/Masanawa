.class final Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "USSDFetcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/otp/USSDFetcher;->w(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;JJLjava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.account.otp.USSDFetcher$startLoopOtp$1"
    f = "USSDFetcher.kt"
    l = {
        0x84
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $dialCode:Ljava/lang/String;

.field final synthetic $interval:J

.field final synthetic $loopTime:J

.field final synthetic $otpFetcher:Lteam/opay/pay/account/otp/OtpFetcher;

.field final synthetic $tel:Ljava/lang/String;

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLandroidx/fragment/app/FragmentActivity;Lteam/opay/pay/account/otp/OtpFetcher;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lteam/opay/pay/account/otp/OtpFetcher;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$tel:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$dialCode:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p3, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$loopTime:J

    .line 6
    .line 7
    iput-wide p5, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$interval:J

    .line 8
    .line 9
    iput-object p7, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$context:Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    iput-object p8, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$otpFetcher:Lteam/opay/pay/account/otp/OtpFetcher;

    .line 12
    .line 13
    iput-object p9, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Lzr2;Lkotlin/jvm/internal/Ref$LongRef;JLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->invokeSuspend$lambda$0(Lkotlin/jvm/functions/Function1;Lzr2;Lkotlin/jvm/internal/Ref$LongRef;JLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lkotlin/jvm/functions/Function1;Lzr2;Lkotlin/jvm/internal/Ref$LongRef;JLjava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p5, :cond_1

    .line 2
    .line 3
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-static {p1, p2, p0, p2}, Lkotlinx/coroutines/g;->e(Lzr2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget-wide p1, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 20
    .line 21
    cmp-long p5, p1, p3

    .line 22
    .line 23
    if-nez p5, :cond_2

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v11, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$tel:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$dialCode:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$loopTime:J

    .line 8
    .line 9
    iget-wide v5, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$interval:J

    .line 10
    .line 11
    iget-object v7, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$context:Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    iget-object v8, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$otpFetcher:Lteam/opay/pay/account/otp/OtpFetcher;

    .line 14
    .line 15
    iget-object v9, p0, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    move-object v0, v11

    .line 18
    move-object v10, p2

    .line 19
    invoke-direct/range {v0 .. v10}, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;-><init>(Ljava/lang/String;Ljava/lang/String;JJLandroidx/fragment/app/FragmentActivity;Lteam/opay/pay/account/otp/OtpFetcher;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, v11, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    return-object v11
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "line.separator"

    .line 4
    .line 5
    const-string v2, "1FKF9DNuV8DDuc9Vdlg="

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget v5, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->label:I

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    if-eqz v5, :cond_2

    .line 17
    .line 18
    if-ne v5, v6, :cond_1

    .line 19
    .line 20
    iget-wide v2, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->J$0:J

    .line 21
    .line 22
    iget-object v0, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->L$2:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lteam/opay/pay/account/verify/QueryOtpRequest;

    .line 25
    .line 26
    iget-object v5, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->L$1:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 29
    .line 30
    iget-object v7, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->L$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v7, Lzr2;

    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    move-object v13, v7

    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v5, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v5, Lzr2;

    .line 54
    .line 55
    :try_start_0
    sget-object v7, Lt;->a:Lt;

    .line 56
    .line 57
    iget-object v8, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$tel:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v7, v8, v2}, Lt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    if-nez v8, :cond_3

    .line 68
    .line 69
    move-object v10, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    move-object v10, v8

    .line 72
    :goto_0
    const-string v11, ""

    .line 73
    .line 74
    const/4 v13, 0x4

    .line 75
    const/4 v14, 0x0

    .line 76
    const/4 v12, 0x0

    .line 77
    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :try_start_1
    iget-object v9, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$dialCode:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v7, v9, v2}, Lt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    move-object v11, v3

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    move-object v11, v0

    .line 96
    :goto_1
    const-string v12, ""

    .line 97
    .line 98
    const/4 v14, 0x4

    .line 99
    const/4 v15, 0x0

    .line 100
    const/4 v13, 0x0

    .line 101
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    goto :goto_3

    .line 106
    :catch_0
    move-exception v0

    .line 107
    goto :goto_2

    .line 108
    :catch_1
    move-exception v0

    .line 109
    move-object v8, v3

    .line 110
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :goto_3
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 114
    .line 115
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v2, Lteam/opay/pay/account/verify/QueryOtpRequest;

    .line 119
    .line 120
    const-string v7, "ussd"

    .line 121
    .line 122
    invoke-direct {v2, v8, v7, v3}, Lteam/opay/pay/account/verify/QueryOtpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-wide v7, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$loopTime:J

    .line 126
    .line 127
    iget-wide v9, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$interval:J

    .line 128
    .line 129
    div-long/2addr v7, v9

    .line 130
    move-object/from16 v16, v5

    .line 131
    .line 132
    move-object v5, v0

    .line 133
    move-object v0, v2

    .line 134
    move-wide v2, v7

    .line 135
    move-object/from16 v7, v16

    .line 136
    .line 137
    :goto_4
    iget-wide v8, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 138
    .line 139
    cmp-long v10, v8, v2

    .line 140
    .line 141
    if-gez v10, :cond_5

    .line 142
    .line 143
    invoke-static {v7}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_5

    .line 148
    .line 149
    iget-wide v8, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$interval:J

    .line 150
    .line 151
    iput-object v7, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->L$0:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object v5, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->L$1:Ljava/lang/Object;

    .line 154
    .line 155
    iput-object v0, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->L$2:Ljava/lang/Object;

    .line 156
    .line 157
    iput-wide v2, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->J$0:J

    .line 158
    .line 159
    iput v6, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->label:I

    .line 160
    .line 161
    invoke-static {v8, v9, v1}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    if-ne v8, v4, :cond_0

    .line 166
    .line 167
    return-object v4

    .line 168
    :goto_5
    sget-object v14, Lteam/opay/pay/account/otp/USSDFetcher;->a:Lteam/opay/pay/account/otp/USSDFetcher;

    .line 169
    .line 170
    iget-object v15, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$context:Landroidx/fragment/app/FragmentActivity;

    .line 171
    .line 172
    iget-object v11, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$otpFetcher:Lteam/opay/pay/account/otp/OtpFetcher;

    .line 173
    .line 174
    iget-object v8, v1, Lteam/opay/pay/account/otp/USSDFetcher$startLoopOtp$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 175
    .line 176
    new-instance v12, Lteam/opay/pay/account/otp/a;

    .line 177
    .line 178
    move-object v7, v12

    .line 179
    move-object v9, v13

    .line 180
    move-object v10, v5

    .line 181
    move-object v6, v11

    .line 182
    move-object v1, v12

    .line 183
    move-wide v11, v2

    .line 184
    invoke-direct/range {v7 .. v12}, Lteam/opay/pay/account/otp/a;-><init>(Lkotlin/jvm/functions/Function1;Lzr2;Lkotlin/jvm/internal/Ref$LongRef;J)V

    .line 185
    .line 186
    .line 187
    invoke-static {v14, v15, v6, v0, v1}, Lteam/opay/pay/account/otp/USSDFetcher;->g(Lteam/opay/pay/account/otp/USSDFetcher;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/account/otp/OtpFetcher;Lteam/opay/pay/account/verify/QueryOtpRequest;Lkotlin/jvm/functions/Function1;)V

    .line 188
    .line 189
    .line 190
    iget-wide v6, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 191
    .line 192
    const-wide/16 v8, 0x1

    .line 193
    .line 194
    add-long/2addr v6, v8

    .line 195
    iput-wide v6, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 196
    .line 197
    const/4 v6, 0x1

    .line 198
    move-object/from16 v1, p0

    .line 199
    .line 200
    move-object v7, v13

    .line 201
    goto :goto_4

    .line 202
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 203
    .line 204
    return-object v0
.end method
