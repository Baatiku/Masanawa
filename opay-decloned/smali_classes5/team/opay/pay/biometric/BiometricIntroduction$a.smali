.class public final Lteam/opay/pay/biometric/BiometricIntroduction$a;
.super Ljava/lang/Object;
.source "BiometricIntroduction.kt"

# interfaces
.implements Li77;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/biometric/BiometricIntroduction;->w(Landroidx/fragment/app/FragmentActivity;ILandroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0004J!\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J!\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "team/opay/pay/biometric/BiometricIntroduction$a",
        "Li77;",
        "",
        "e",
        "()V",
        "Ljavax/crypto/Cipher;",
        "cipher",
        "b",
        "(Ljavax/crypto/Cipher;)V",
        "d",
        "",
        "errorCode",
        "",
        "errorString",
        "c",
        "(ILjava/lang/CharSequence;)V",
        "onCancel",
        "helperCode",
        "helperString",
        "a",
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
.field public final synthetic a:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:I

.field public final synthetic d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lteam/opay/pay/biometric/FingerData;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Lteam/opay/pay/biometric/BiometricIntroduction;

.field public final synthetic f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;ILandroidx/lifecycle/MutableLiveData;Lteam/opay/pay/biometric/BiometricIntroduction;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lteam/opay/pay/biometric/FingerData;",
            ">;>;",
            "Lteam/opay/pay/biometric/BiometricIntroduction;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->a:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput p3, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->d:Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->e:Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->f:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    iput-object p7, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->g:Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->b:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget-object p2, Lteam/opay/pay/biometric/BiometricIntroduction;->f:Lteam/opay/pay/biometric/BiometricIntroduction$Companion;

    .line 19
    .line 20
    invoke-virtual {p2}, Lteam/opay/pay/biometric/BiometricIntroduction$Companion;->d()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public b(Ljavax/crypto/Cipher;)V
    .locals 7

    .line 1
    iget v0, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->d:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    new-instance v1, Lkotlin/Pair;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Lteam/opay/pay/biometric/FingerData;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    new-array v4, v3, [B

    .line 18
    .line 19
    new-array v3, v3, [B

    .line 20
    .line 21
    const-string v5, ""

    .line 22
    .line 23
    invoke-direct {v2, v5, v4, v3}, Lteam/opay/pay/biometric/FingerData;-><init>(Ljava/lang/String;[B[B)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-eqz p1, :cond_1

    .line 34
    .line 35
    :try_start_0
    iget-object v1, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->e:Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 36
    .line 37
    iget-object v2, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->d:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    invoke-static {v1}, Lteam/opay/pay/biometric/BiometricIntroduction;->k(Lteam/opay/pay/biometric/BiometricIntroduction;)Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lteam/opay/pay/biometric/BiometricPromptManager;->r()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v4, "getBytes(...)"

    .line 58
    .line 59
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    new-instance v4, Lkotlin/Pair;

    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v5, Lteam/opay/pay/biometric/FingerData;

    .line 73
    .line 74
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getIV()[B

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v6, "getIV(...)"

    .line 82
    .line 83
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v5, v1, v3, p1}, Lteam/opay/pay/biometric/FingerData;-><init>(Ljava/lang/String;[B[B)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v4, v0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    :cond_1
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->b:Lkotlin/jvm/functions/Function1;

    .line 105
    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    sget-object v0, Lteam/opay/pay/biometric/BiometricIntroduction;->f:Lteam/opay/pay/biometric/BiometricIntroduction$Companion;

    .line 109
    .line 110
    invoke-virtual {v0}, Lteam/opay/pay/biometric/BiometricIntroduction$Companion;->f()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :cond_2
    return-void
.end method

.method public c(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->a:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->g:Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p2, 0x0

    .line 24
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->b:Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    sget-object p2, Lteam/opay/pay/biometric/BiometricIntroduction;->f:Lteam/opay/pay/biometric/BiometricIntroduction$Companion;

    .line 32
    .line 33
    invoke-virtual {p2}, Lteam/opay/pay/biometric/BiometricIntroduction$Companion;->b()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->b:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/biometric/BiometricIntroduction;->f:Lteam/opay/pay/biometric/BiometricIntroduction$Companion;

    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/pay/biometric/BiometricIntroduction$Companion;->c()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->a:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->b:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/biometric/BiometricIntroduction;->f:Lteam/opay/pay/biometric/BiometricIntroduction$Companion;

    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/pay/biometric/BiometricIntroduction$Companion;->e()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->a:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/biometric/BiometricIntroduction$a;->b:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/biometric/BiometricIntroduction;->f:Lteam/opay/pay/biometric/BiometricIntroduction$Companion;

    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/pay/biometric/BiometricIntroduction$Companion;->a()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
