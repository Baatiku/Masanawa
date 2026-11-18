.class public final Lteam/opay/pay/account/verify/VerifyNameFragment$a;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "VerifyNameFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/verify/VerifyNameFragment;->z0(Lteam/opay/pay/android/views/KeyboardEditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/pay/account/verify/VerifyNameFragment$a",
        "Lteam/opay/core/android/views/SafeDelayedTextWatcher;",
        "Landroid/text/Editable;",
        "s",
        "",
        "b",
        "(Landroid/text/Editable;)V",
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
.field public final synthetic e:Lteam/opay/pay/account/verify/VerifyNameFragment;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lteam/opay/pay/account/verify/VerifyNameFragment;I)V
    .locals 6

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyNameFragment$a;->e:Lteam/opay/pay/account/verify/VerifyNameFragment;

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/pay/account/verify/VerifyNameFragment$a;->f:I

    .line 4
    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/android/views/SafeDelayedTextWatcher;-><init>(Lag8;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public b(Landroid/text/Editable;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyNameFragment$a;->e:Lteam/opay/pay/account/verify/VerifyNameFragment;

    .line 4
    .line 5
    iget v1, p0, Lteam/opay/pay/account/verify/VerifyNameFragment$a;->f:I

    .line 6
    .line 7
    invoke-static {v0}, Lteam/opay/pay/account/verify/VerifyNameFragment;->y0(Lteam/opay/pay/account/verify/VerifyNameFragment;)[Z

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    aput-boolean p1, v2, v1

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lij6;

    .line 27
    .line 28
    iget-object p1, p1, Lij6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 29
    .line 30
    invoke-static {v0}, Lteam/opay/pay/account/verify/VerifyNameFragment;->y0(Lteam/opay/pay/account/verify/VerifyNameFragment;)[Z

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lteam/opay/pay/account/verify/VerifyNameFragment;->C0([Z)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
