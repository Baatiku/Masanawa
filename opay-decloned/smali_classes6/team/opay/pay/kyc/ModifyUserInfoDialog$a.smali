.class public final Lteam/opay/pay/kyc/ModifyUserInfoDialog$a;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "ModifyUserInfoDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/ModifyUserInfoDialog;->e0()V
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
        "team/opay/pay/kyc/ModifyUserInfoDialog$a",
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
.field public final synthetic e:Lteam/opay/pay/kyc/ModifyUserInfoDialog;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/ModifyUserInfoDialog;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/ModifyUserInfoDialog$a;->e:Lteam/opay/pay/kyc/ModifyUserInfoDialog;

    .line 2
    .line 3
    const-wide/16 v0, 0xc8

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Lteam/opay/core/android/views/SafeDelayedTextWatcher;-><init>(Lag8;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Landroid/text/Editable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoDialog$a;->e:Lteam/opay/pay/kyc/ModifyUserInfoDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmd3;

    .line 8
    .line 9
    iget-object v0, v0, Lmd3;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 10
    .line 11
    const-string v1, "clear"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v2, v1

    .line 25
    :goto_0
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 39
    :goto_2
    xor-int/2addr v2, v4

    .line 40
    invoke-static {v0, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoDialog$a;->e:Lteam/opay/pay/kyc/ModifyUserInfoDialog;

    .line 44
    .line 45
    invoke-virtual {v0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lmd3;

    .line 50
    .line 51
    iget-object v0, v0, Lmd3;->d:Lcom/google/android/material/button/MaterialButton;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_3
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    :cond_4
    const/4 v3, 0x1

    .line 68
    :cond_5
    xor-int/lit8 p1, v3, 0x1

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lteam/opay/pay/kyc/ModifyUserInfoDialog$a;->e:Lteam/opay/pay/kyc/ModifyUserInfoDialog;

    .line 74
    .line 75
    invoke-static {p1}, Lteam/opay/pay/kyc/ModifyUserInfoDialog;->W(Lteam/opay/pay/kyc/ModifyUserInfoDialog;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
