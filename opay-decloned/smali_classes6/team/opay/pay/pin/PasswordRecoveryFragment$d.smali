.class public final Lteam/opay/pay/pin/PasswordRecoveryFragment$d;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "PasswordRecoveryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/pin/PasswordRecoveryFragment;->m0()V
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
        "team/opay/pay/pin/PasswordRecoveryFragment$d",
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
.field public final synthetic e:Lteam/opay/pay/pin/PasswordRecoveryFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/pin/PasswordRecoveryFragment;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lteam/opay/pay/pin/PasswordRecoveryFragment$d;->e:Lteam/opay/pay/pin/PasswordRecoveryFragment;

    .line 2
    .line 3
    const/4 v4, 0x2

    .line 4
    const/4 v5, 0x0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/android/views/SafeDelayedTextWatcher;-><init>(Lag8;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/PasswordRecoveryFragment$d;->e:Lteam/opay/pay/pin/PasswordRecoveryFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/pin/PasswordRecoveryFragment$d;->e:Lteam/opay/pay/pin/PasswordRecoveryFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/pay/pin/PasswordRecoveryFragment$d;->e:Lteam/opay/pay/pin/PasswordRecoveryFragment;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v0, 0x1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lteam/opay/pay/pin/PasswordRecoveryFragment$d;->e:Lteam/opay/pay/pin/PasswordRecoveryFragment;

    .line 38
    .line 39
    invoke-static {p1, v0}, Lteam/opay/pay/pin/PasswordRecoveryFragment;->e0(Lteam/opay/pay/pin/PasswordRecoveryFragment;Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/pin/PasswordRecoveryFragment$d;->e:Lteam/opay/pay/pin/PasswordRecoveryFragment;

    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lud6;

    .line 49
    .line 50
    iget-object p1, p1, Lud6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 51
    .line 52
    iget-object v1, p0, Lteam/opay/pay/pin/PasswordRecoveryFragment$d;->e:Lteam/opay/pay/pin/PasswordRecoveryFragment;

    .line 53
    .line 54
    invoke-static {v1}, Lteam/opay/pay/pin/PasswordRecoveryFragment;->d0(Lteam/opay/pay/pin/PasswordRecoveryFragment;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lteam/opay/pay/pin/PasswordRecoveryFragment$d;->e:Lteam/opay/pay/pin/PasswordRecoveryFragment;

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lud6;

    .line 68
    .line 69
    iget-object p1, p1, Lud6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 70
    .line 71
    const-string v1, "icClear"

    .line 72
    .line 73
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lteam/opay/pay/pin/PasswordRecoveryFragment$d;->e:Lteam/opay/pay/pin/PasswordRecoveryFragment;

    .line 77
    .line 78
    invoke-virtual {v1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lud6;

    .line 83
    .line 84
    iget-object v1, v1, Lud6;->d:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_2

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const/4 v1, 0x0

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 102
    :goto_1
    xor-int/2addr v0, v1

    .line 103
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_2
    return-void
.end method
