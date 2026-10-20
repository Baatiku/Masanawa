.class final Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BiometricPromptApiP.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/biometric/BiometricPromptApiP;->j(Ljavax/crypto/Cipher;ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V
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
    c = "team.opay.pay.biometric.BiometricPromptApiP$auth$2$1"
    f = "BiometricPromptApiP.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $authType:I

.field final synthetic $biometricIdentify:Li77;

.field final synthetic $biometricPrompt:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/hardware/biometrics/BiometricPrompt;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic $obj:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/biometric/BiometricPromptApiP;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;ILteam/opay/pay/biometric/BiometricPromptApiP;Li77;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/hardware/biometrics/BiometricPrompt;",
            ">;",
            "Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;",
            "Landroid/os/CancellationSignal;",
            "I",
            "Lteam/opay/pay/biometric/BiometricPromptApiP;",
            "Li77;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$biometricPrompt:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$obj:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$cancellationSignal:Landroid/os/CancellationSignal;

    .line 8
    .line 9
    iput p5, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$authType:I

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->this$0:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 12
    .line 13
    iput-object p7, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$biometricIdentify:Li77;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 9
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
    new-instance p1, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$biometricPrompt:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$obj:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$cancellationSignal:Landroid/os/CancellationSignal;

    .line 10
    .line 11
    iget v5, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$authType:I

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->this$0:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 14
    .line 15
    iget-object v7, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$biometricIdentify:Li77;

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;-><init>(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;ILteam/opay/pay/biometric/BiometricPromptApiP;Li77;Ljr2;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Ld00;->a:Ld00;

    .line 12
    .line 13
    invoke-virtual {p1}, Ld00;->f()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_4

    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_0
    :try_start_0
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$biometricPrompt:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 38
    .line 39
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {p1}, Leb1;->a(Ljava/lang/Object;)Landroid/hardware/biometrics/BiometricPrompt;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$obj:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 48
    .line 49
    iget-object v1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$cancellationSignal:Landroid/os/CancellationSignal;

    .line 50
    .line 51
    iget-object v2, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 52
    .line 53
    invoke-static {v2}, Loa1;->a(Landroidx/fragment/app/FragmentActivity;)Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v3, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1$a;

    .line 58
    .line 59
    iget-object v4, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->this$0:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 60
    .line 61
    iget-object v5, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$cancellationSignal:Landroid/os/CancellationSignal;

    .line 62
    .line 63
    iget-object v6, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$biometricIdentify:Li77;

    .line 64
    .line 65
    invoke-direct {v3, v4, v5, v6}, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1$a;-><init>(Lteam/opay/pay/biometric/BiometricPromptApiP;Landroid/os/CancellationSignal;Li77;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v3}, Lqa1;->a(Ljava/lang/Object;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {p1, v0, v1, v2, v3}, Lfb1;->a(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lx7b;->a:Lx7b;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, ""

    .line 87
    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    move-object v1, v2

    .line 91
    :cond_1
    const-string v3, "error_msg"

    .line 92
    .line 93
    invoke-static {v3, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget v3, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$authType:I

    .line 98
    .line 99
    invoke-static {v3}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    const-string v4, "auth_type"

    .line 104
    .line 105
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const/4 v4, 0x2

    .line 110
    new-array v4, v4, [Lkotlin/Pair;

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    aput-object v1, v4, v5

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    aput-object v3, v4, v1

    .line 117
    .line 118
    const-string v1, "fingerprint_recognize_exception"

    .line 119
    .line 120
    invoke-virtual {v0, v1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->this$0:Lteam/opay/pay/biometric/BiometricPromptApiP;

    .line 124
    .line 125
    iget-object v1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$cancellationSignal:Landroid/os/CancellationSignal;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-nez p1, :cond_2

    .line 132
    .line 133
    move-object p1, v2

    .line 134
    :cond_2
    invoke-static {v0, v1, p1}, Lteam/opay/pay/biometric/BiometricPromptApiP;->g(Lteam/opay/pay/biometric/BiometricPromptApiP;Landroid/os/CancellationSignal;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$cancellationSignal:Landroid/os/CancellationSignal;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_3

    .line 144
    .line 145
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;->$biometricIdentify:Li77;

    .line 146
    .line 147
    const/4 v0, -0x1

    .line 148
    invoke-interface {p1, v0, v2}, Li77;->c(ILjava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 152
    .line 153
    return-object p1

    .line 154
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    return-object p1

    .line 157
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 160
    .line 161
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1
.end method
