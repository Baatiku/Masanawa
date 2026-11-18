.class public final Lteam/opay/pay/biometric/BiometricPromptApiP;
.super Ljava/lang/Object;
.source "BiometricPromptApiP.kt"

# interfaces
.implements Lk77;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ7\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J/\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J9\u0010\u0017\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J#\u0010\u001a\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\'\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\'\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\'\u0010 \u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008 \u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/pay/biometric/BiometricPromptApiP;",
        "Lk77;",
        "<init>",
        "()V",
        "",
        "authType",
        "",
        "userPhone",
        "m",
        "(ILjava/lang/String;)Ljava/lang/String;",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Landroid/os/CancellationSignal;",
        "cancellationSignal",
        "Li77;",
        "biometricIdentify",
        "",
        "a",
        "(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;ILandroid/os/CancellationSignal;Li77;)V",
        "i",
        "(ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V",
        "Ljavax/crypto/Cipher;",
        "cipher",
        "j",
        "(Ljavax/crypto/Cipher;ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V",
        "msg",
        "l",
        "(Landroid/os/CancellationSignal;Ljava/lang/String;)V",
        "Landroid/app/Activity;",
        "n",
        "(Landroid/app/Activity;ILi77;)V",
        "o",
        "q",
        "Landroid/hardware/biometrics/BiometricPrompt;",
        "Landroid/hardware/biometrics/BiometricPrompt;",
        "biometricPromptPayment",
        "b",
        "biometricPromptLogin",
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
.field public a:Landroid/hardware/biometrics/BiometricPrompt;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroid/hardware/biometrics/BiometricPrompt;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lteam/opay/pay/biometric/BiometricPromptApiP;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Li77;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/biometric/BiometricPromptApiP;->p(Li77;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Li77;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/biometric/BiometricPromptApiP;->r(Li77;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Lteam/opay/pay/biometric/BiometricPromptApiP;ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/biometric/BiometricPromptApiP;->i(ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/pay/biometric/BiometricPromptApiP;Ljavax/crypto/Cipher;ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lteam/opay/pay/biometric/BiometricPromptApiP;->j(Ljavax/crypto/Cipher;ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lteam/opay/pay/biometric/BiometricPromptApiP;Landroid/os/CancellationSignal;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/biometric/BiometricPromptApiP;->l(Landroid/os/CancellationSignal;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lteam/opay/pay/biometric/BiometricPromptApiP;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/biometric/BiometricPromptApiP;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final k()V
    .locals 0

    .line 1
    return-void
.end method

.method private final m(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget-object p1, Ldfa;->a:Ldfa;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ldfa;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Ldfa;->a:Ldfa;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ldfa;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public static final p(Li77;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Li77;->onCancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final r(Li77;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Li77;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;ILandroid/os/CancellationSignal;Li77;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Li77;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v1, p2

    .line 2
    move-object/from16 v5, p4

    .line 3
    .line 4
    move-object/from16 v6, p5

    .line 5
    .line 6
    const-string v0, "userPhone"

    .line 7
    .line 8
    move-object v2, p1

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "activity"

    .line 13
    .line 14
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "cancellationSignal"

    .line 18
    .line 19
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "biometricIdentify"

    .line 23
    .line 24
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v8, p0

    .line 28
    move v3, p3

    .line 29
    invoke-virtual {p0, p2, p3, v6}, Lteam/opay/pay/biometric/BiometricPromptApiP;->n(Landroid/app/Activity;ILi77;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lza1;

    .line 33
    .line 34
    invoke-direct {v0}, Lza1;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    new-instance v11, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    move-object v0, v11

    .line 52
    move-object v4, p0

    .line 53
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/biometric/BiometricPromptApiP$authenticate$2;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILteam/opay/pay/biometric/BiometricPromptApiP;Landroid/os/CancellationSignal;Li77;Ljr2;)V

    .line 54
    .line 55
    .line 56
    const/4 v5, 0x2

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v3, 0x0

    .line 59
    move-object v1, v9

    .line 60
    move-object v2, v10

    .line 61
    move-object v4, v11

    .line 62
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final i(ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p1, p4}, Lteam/opay/pay/biometric/BiometricPromptApiP;->n(Landroid/app/Activity;ILi77;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP;->a:Landroid/hardware/biometrics/BiometricPrompt;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p2}, Loa1;->a(Landroidx/fragment/app/FragmentActivity;)Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    new-instance v0, Lteam/opay/pay/biometric/BiometricPromptApiP$a;

    .line 13
    .line 14
    invoke-direct {v0, p0, p3, p4}, Lteam/opay/pay/biometric/BiometricPromptApiP$a;-><init>(Lteam/opay/pay/biometric/BiometricPromptApiP;Landroid/os/CancellationSignal;Li77;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lqa1;->a(Ljava/lang/Object;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    invoke-static {p1, p3, p2, p4}, Lra1;->a(Landroid/hardware/biometrics/BiometricPrompt;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final j(Ljavax/crypto/Cipher;ILandroidx/fragment/app/FragmentActivity;Landroid/os/CancellationSignal;Li77;)V
    .locals 16

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v5, p2

    .line 4
    .line 5
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq v5, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq v5, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq v5, v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    if-eq v5, v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, v9, Lteam/opay/pay/biometric/BiometricPromptApiP;->a:Landroid/hardware/biometrics/BiometricPrompt;

    .line 27
    .line 28
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, v9, Lteam/opay/pay/biometric/BiometricPromptApiP;->b:Landroid/hardware/biometrics/BiometricPrompt;

    .line 32
    .line 33
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 34
    .line 35
    :goto_0
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Lsa1;->a(Ljavax/crypto/Cipher;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static/range {p3 .. p3}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    new-instance v13, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    move-object v0, v13

    .line 53
    move-object/from16 v1, p3

    .line 54
    .line 55
    move-object/from16 v4, p4

    .line 56
    .line 57
    move/from16 v5, p2

    .line 58
    .line 59
    move-object/from16 v6, p0

    .line 60
    .line 61
    move-object/from16 v7, p5

    .line 62
    .line 63
    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/biometric/BiometricPromptApiP$auth$2$1;-><init>(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;ILteam/opay/pay/biometric/BiometricPromptApiP;Li77;Ljr2;)V

    .line 64
    .line 65
    .line 66
    const/4 v14, 0x2

    .line 67
    const/4 v15, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    invoke-static/range {v10 .. v15}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method public final l(Landroid/os/CancellationSignal;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1c

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    sget-object p1, Lx7b;->a:Lx7b;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    const-string p2, ""

    .line 18
    .line 19
    :cond_0
    const-string v0, "e"

    .line 20
    .line 21
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [Lkotlin/Pair;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    aput-object p2, v0, v1

    .line 30
    .line 31
    const-string p2, "biometric_prompt_api_p"

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public final n(Landroid/app/Activity;ILi77;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p2, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p2, v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/biometric/BiometricPromptApiP;->q(Landroid/app/Activity;ILi77;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/biometric/BiometricPromptApiP;->o(Landroid/app/Activity;ILi77;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final o(Landroid/app/Activity;ILi77;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lteam/opay/pay/biometric/BiometricPromptApiP;->b:Landroid/hardware/biometrics/BiometricPrompt;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lua1;->a()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p2}, Lta1;->a(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    sget v0, Lteam/opay/pay/R$string;->biometric_verifying_fingerprint:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p2, v0}, Lva1;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, ""

    .line 27
    .line 28
    invoke-static {p2, v0}, Lwa1;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v0, "setSubtitle(...)"

    .line 33
    .line 34
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget v0, Lteam/opay/pay/R$string;->cancel:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "getString(...)"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lxa1;->a(Landroid/app/Activity;)Ljava/util/concurrent/Executor;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v1, Lab1;

    .line 53
    .line 54
    invoke-direct {v1, p3}, Lab1;-><init>(Li77;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p2, v0, p1, v1}, Lya1;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Lpa1;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;)Landroid/hardware/biometrics/BiometricPrompt;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP;->b:Landroid/hardware/biometrics/BiometricPrompt;

    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public final q(Landroid/app/Activity;ILi77;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricPromptApiP;->a:Landroid/hardware/biometrics/BiometricPrompt;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lua1;->a()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lta1;->a(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget v1, Lteam/opay/pay/R$string;->biometric_verifying_fingerprint:I

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lva1;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, ""

    .line 27
    .line 28
    invoke-static {v0, v1}, Lwa1;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "setSubtitle(...)"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    if-eq p2, v1, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    if-eq p2, v1, :cond_0

    .line 42
    .line 43
    sget p2, Lteam/opay/pay/R$string;->cancel:I

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget p2, Lteam/opay/pay/R$string;->biometric_continue_with_pin:I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lxa1;->a(Landroid/app/Activity;)Ljava/util/concurrent/Executor;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v1, Lbb1;

    .line 64
    .line 65
    invoke-direct {v1, p3}, Lbb1;-><init>(Li77;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, p2, p1, v1}, Lya1;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lpa1;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;)Landroid/hardware/biometrics/BiometricPrompt;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lteam/opay/pay/biometric/BiometricPromptApiP;->a:Landroid/hardware/biometrics/BiometricPrompt;

    .line 76
    .line 77
    :cond_1
    return-void
.end method
