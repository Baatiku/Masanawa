.class final Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BiometricPromptManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/biometric/BiometricPromptManager;->f(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
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
    c = "team.opay.pay.biometric.BiometricPromptManager$checkAddFingerprintInAction$1"
    f = "BiometricPromptManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $addBiometric:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $authType:I

.field final synthetic $mobile:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/biometric/BiometricPromptManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILteam/opay/pay/biometric/BiometricPromptManager;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            "I",
            "Lteam/opay/pay/biometric/BiometricPromptManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$mobile:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$authType:I

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->this$0:Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$addBiometric:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->invokeSuspend$lambda$0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final invokeSuspend$lambda$0()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "biometric action in check add finger true"

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
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
    new-instance p1, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$mobile:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$authType:I

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->this$0:Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$addBiometric:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILteam/opay/pay/biometric/BiometricPromptManager;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v0, 0x17

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-lt p1, v0, :cond_4

    .line 17
    .line 18
    new-instance p1, Lteam/opay/pay/biometric/KeyGenTool;

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "getPackageName(...)"

    .line 31
    .line 32
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$mobile:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {p1, v0, v2}, Lteam/opay/pay/biometric/KeyGenTool;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$authType:I

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    if-ne v0, v2, :cond_0

    .line 44
    .line 45
    sget-object v0, Ldfa;->a:Ldfa;

    .line 46
    .line 47
    iget-object v2, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$mobile:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ldfa;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Ldfa;->a:Ldfa;

    .line 55
    .line 56
    iget-object v2, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$mobile:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ldfa;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_0
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/16 v2, 0x8

    .line 72
    .line 73
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lteam/opay/pay/biometric/KeyGenTool;->d([B)Ljavax/crypto/Cipher;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-object v0, Lxk8;->a:Lxk8;

    .line 85
    .line 86
    new-instance v2, Lteam/opay/pay/biometric/b;

    .line 87
    .line 88
    invoke-direct {v2}, Lteam/opay/pay/biometric/b;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "BiometricPromptManager"

    .line 92
    .line 93
    invoke-virtual {v0, v3, v2}, Lxk8;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->this$0:Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 97
    .line 98
    iget-object v2, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 99
    .line 100
    if-nez p1, :cond_2

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$addBiometric:Lkotlin/jvm/functions/Function1;

    .line 104
    .line 105
    invoke-static {v0, v2, v1, p1}, Lteam/opay/pay/biometric/BiometricPromptManager;->b(Lteam/opay/pay/biometric/BiometricPromptManager;Landroidx/fragment/app/FragmentActivity;ZLkotlin/jvm/functions/Function1;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    :goto_1
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->this$0:Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 110
    .line 111
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 112
    .line 113
    iget-object v2, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$addBiometric:Lkotlin/jvm/functions/Function1;

    .line 114
    .line 115
    invoke-static {p1, v0, v1, v2}, Lteam/opay/pay/biometric/BiometricPromptManager;->b(Lteam/opay/pay/biometric/BiometricPromptManager;Landroidx/fragment/app/FragmentActivity;ZLkotlin/jvm/functions/Function1;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->this$0:Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 120
    .line 121
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 122
    .line 123
    iget-object v2, p0, Lteam/opay/pay/biometric/BiometricPromptManager$checkAddFingerprintInAction$1;->$addBiometric:Lkotlin/jvm/functions/Function1;

    .line 124
    .line 125
    invoke-static {p1, v0, v1, v2}, Lteam/opay/pay/biometric/BiometricPromptManager;->b(Lteam/opay/pay/biometric/BiometricPromptManager;Landroidx/fragment/app/FragmentActivity;ZLkotlin/jvm/functions/Function1;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    return-object p1

    .line 131
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 134
    .line 135
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1
.end method
