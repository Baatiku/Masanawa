.class final Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BiometricPromptApiP.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/biometric/BiometricPromptApiP;->a(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;ILandroid/os/CancellationSignal;Li77;)V
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
    c = "team.opay.pay.biometric.BiometricPromptApiP$authenticate$2"
    f = "BiometricPromptApiP.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $authType:I

.field final synthetic $biometricIdentify:Li77;

.field final synthetic $cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic $userPhone:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/biometric/BiometricPromptApiP;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILteam/opay/pay/biometric/BiometricPromptApiP;Landroid/os/CancellationSignal;Li77;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            "I",
            "Lteam/opay/pay/biometric/BiometricPromptApiP;",
            "Landroid/os/CancellationSignal;",
            "Li77;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$userPhone:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$authType:I

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->this$0:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$cancellationSignal:Landroid/os/CancellationSignal;

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$biometricIdentify:Li77;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 8
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
    new-instance p1, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$userPhone:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$authType:I

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->this$0:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$cancellationSignal:Landroid/os/CancellationSignal;

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$biometricIdentify:Li77;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILteam/opay/pay/biometric/BiometricPromptApiP;Landroid/os/CancellationSignal;Li77;Ljr2;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v2, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->label:I

    .line 7
    .line 8
    if-nez v2, :cond_7

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lteam/opay/pay/biometric/KeyGenTool;

    .line 14
    .line 15
    iget-object v2, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "getPackageName(...)"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$userPhone:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {p1, v2, v3}, Lteam/opay/pay/biometric/KeyGenTool;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v2, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$authType:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eq v2, v1, :cond_5

    .line 35
    .line 36
    if-eq v2, v0, :cond_1

    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    if-eq v2, v4, :cond_5

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    if-eq v2, v4, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x5

    .line 45
    if-eq v2, p1, :cond_0

    .line 46
    .line 47
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 48
    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_0
    :try_start_0
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->this$0:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 53
    .line 54
    iget-object v3, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 55
    .line 56
    iget-object v4, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$cancellationSignal:Landroid/os/CancellationSignal;

    .line 57
    .line 58
    iget-object v5, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$biometricIdentify:Li77;

    .line 59
    .line 60
    invoke-static {p1, v2, v3, v4, v5}, Lteam/opay/pay/biometric/BiometricPromptApiP;->e(Lteam/opay/pay/biometric/BiometricPromptApiP;ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :catch_0
    move-exception p1

    .line 66
    sget-object v2, Lx7b;->a:Lx7b;

    .line 67
    .line 68
    const-string v3, "errorType"

    .line 69
    .line 70
    invoke-static {v3, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-string v4, "message"

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v4, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-array v0, v0, [Lkotlin/Pair;

    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    aput-object v3, v0, v4

    .line 88
    .line 89
    aput-object p1, v0, v1

    .line 90
    .line 91
    const-string p1, "biometric_sms_subscribe_error"

    .line 92
    .line 93
    invoke-virtual {v2, p1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->this$0:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 99
    .line 100
    iget-object v1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$userPhone:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v0, v2, v1}, Lteam/opay/pay/biometric/BiometricPromptApiP;->h(Lteam/opay/pay/biometric/BiometricPromptApiP;ILjava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_2

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    iget-object v4, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->this$0:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 116
    .line 117
    iget v6, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$authType:I

    .line 118
    .line 119
    iget-object v7, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 120
    .line 121
    iget-object v8, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$cancellationSignal:Landroid/os/CancellationSignal;

    .line 122
    .line 123
    iget-object v9, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$biometricIdentify:Li77;

    .line 124
    .line 125
    const/16 v1, 0x8

    .line 126
    .line 127
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lteam/opay/pay/biometric/KeyGenTool;->d([B)Ljavax/crypto/Cipher;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    if-nez v5, :cond_3

    .line 139
    .line 140
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    return-object p1

    .line 143
    :cond_3
    :try_start_1
    invoke-static/range {v4 .. v9}, Lteam/opay/pay/biometric/BiometricPromptApiP;->f(Lteam/opay/pay/biometric/BiometricPromptApiP;Ljavax/crypto/Cipher;ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catch_1
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 153
    .line 154
    invoke-static {p1}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    new-instance v7, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2$2;

    .line 163
    .line 164
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$biometricIdentify:Li77;

    .line 165
    .line 166
    invoke-direct {v7, p1, v3}, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2$2;-><init>(Li77;Ljr2;)V

    .line 167
    .line 168
    .line 169
    const/4 v8, 0x2

    .line 170
    const/4 v9, 0x0

    .line 171
    const/4 v6, 0x0

    .line 172
    invoke-static/range {v4 .. v9}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 173
    .line 174
    .line 175
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 176
    .line 177
    return-object p1

    .line 178
    :cond_5
    invoke-virtual {p1}, Lteam/opay/pay/biometric/KeyGenTool;->f()Ljavax/crypto/Cipher;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    if-nez v5, :cond_6

    .line 183
    .line 184
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 185
    .line 186
    return-object p1

    .line 187
    :cond_6
    :try_start_2
    iget-object v4, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->this$0:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 188
    .line 189
    iget v6, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$authType:I

    .line 190
    .line 191
    iget-object v7, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 192
    .line 193
    iget-object v8, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$cancellationSignal:Landroid/os/CancellationSignal;

    .line 194
    .line 195
    iget-object v9, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$biometricIdentify:Li77;

    .line 196
    .line 197
    invoke-static/range {v4 .. v9}, Lteam/opay/pay/biometric/BiometricPromptApiP;->f(Lteam/opay/pay/biometric/BiometricPromptApiP;Ljavax/crypto/Cipher;ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :catch_2
    move-exception p1

    .line 202
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 203
    .line 204
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    new-instance v7, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2$1;

    .line 213
    .line 214
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;->$biometricIdentify:Li77;

    .line 215
    .line 216
    invoke-direct {v7, v0, v3}, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2$1;-><init>(Li77;Ljr2;)V

    .line 217
    .line 218
    .line 219
    const/4 v8, 0x2

    .line 220
    const/4 v9, 0x0

    .line 221
    const/4 v6, 0x0

    .line 222
    invoke-static/range {v4 .. v9}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    .line 227
    .line 228
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 229
    .line 230
    return-object p1

    .line 231
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 232
    .line 233
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 234
    .line 235
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p1
.end method
