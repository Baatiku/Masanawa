.class public final Lteam/opay/pay/pin/AbstractLoginFragment$c;
.super Ljava/lang/Object;
.source "AbstractLoginFragment.kt"

# interfaces
.implements Li77;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/pin/AbstractLoginFragment;->Z0(Lkotlin/jvm/functions/Function0;)V
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
        "team/opay/pay/pin/AbstractLoginFragment$c",
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lteam/opay/pay/pin/AbstractLoginFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/pin/AbstractLoginFragment<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/pay/pin/AbstractLoginFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/pay/pin/AbstractLoginFragment<",
            "TVB;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment$c;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/pin/AbstractLoginFragment$c;->b:Lteam/opay/pay/pin/AbstractLoginFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment$c;->b:Lteam/opay/pay/pin/AbstractLoginFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p2, 0x0

    .line 15
    :goto_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    const-string p2, ""

    .line 18
    .line 19
    :cond_1
    invoke-static {p1, p2}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public b(Ljavax/crypto/Cipher;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lteam/opay/pay/pin/AbstractLoginFragment$c;->a:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v9, p0, Lteam/opay/pay/pin/AbstractLoginFragment$c;->b:Lteam/opay/pay/pin/AbstractLoginFragment;

    .line 7
    .line 8
    sget-object v2, Ldfa;->a:Ldfa;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ldfa;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v2, "doFinal(...)"

    .line 25
    .line 26
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Ljava/lang/String;

    .line 30
    .line 31
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v9, v2}, Lteam/opay/pay/pin/AbstractLoginFragment;->k0(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v9, v0}, Lteam/opay/pay/pin/AbstractLoginFragment;->T0(Z)V

    .line 40
    .line 41
    .line 42
    invoke-static {v9}, Lteam/opay/pay/pin/AbstractLoginFragment;->j0(Lteam/opay/pay/pin/AbstractLoginFragment;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/16 v7, 0xe

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    move-object v2, v9

    .line 53
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/pin/AbstractLoginFragment;->r1(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Luqe;->a:Luqe;

    .line 57
    .line 58
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "fingerfaceid_verify_result"

    .line 63
    .line 64
    const-string v4, "phone"

    .line 65
    .line 66
    invoke-static {v4, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v4, "is_success"

    .line 71
    .line 72
    const-string v5, "0"

    .line 73
    .line 74
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const/4 v5, 0x2

    .line 79
    new-array v5, v5, [Lkotlin/Pair;

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    aput-object v1, v5, v6

    .line 83
    .line 84
    aput-object v4, v5, v0

    .line 85
    .line 86
    invoke-virtual {p1, v2, v3, v5}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :cond_0
    :goto_0
    return-void
.end method

.method public c(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment$c;->b:Lteam/opay/pay/pin/AbstractLoginFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p2, 0x0

    .line 15
    :goto_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    const-string p2, ""

    .line 18
    .line 19
    :cond_1
    invoke-static {p1, p2}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "fingerprint_login_pin/password"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 1
    return-void
.end method
