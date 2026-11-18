.class public final Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2;
.super Ljava/lang/Object;
.source "AppLockFingerFragment.kt"

# interfaces
.implements Li77;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/pin/AppLockFingerFragment;->u0()V
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
        "team/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2",
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
.field public final synthetic a:Lteam/opay/pay/pin/AppLockFingerFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/pin/AppLockFingerFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2;->a:Lteam/opay/pay/pin/AppLockFingerFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2;->a:Lteam/opay/pay/pin/AppLockFingerFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

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
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2;->a:Lteam/opay/pay/pin/AppLockFingerFragment;

    .line 4
    .line 5
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v4, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v4, v0, p1, v3}, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2$onSuccess$1$1;-><init>(Lteam/opay/pay/pin/AppLockFingerFragment;Ljavax/crypto/Cipher;Ljr2;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public c(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockFingerFragment$onFingerClick$1$2;->a:Lteam/opay/pay/pin/AppLockFingerFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

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
    .locals 0

    .line 1
    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 1
    return-void
.end method
